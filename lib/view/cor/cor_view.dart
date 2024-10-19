import 'package:flutter/material.dart';
import '../../controller/cor/cor_controller.dart';
import '../../database/app_database.dart';
import '../../repository/cor/cor_repository.dart';

class CorView extends StatefulWidget {
  const CorView({super.key});

  @override
  _CorViewState createState() => _CorViewState();
}

class _CorViewState extends State<CorView> {
  late final CorController _controller;

  @override
  void initState() {
    super.initState();
    final db = AppDatabase();
    final repository = CorRepository(db);
    _controller = CorController(repository);
    _controller.fetchCores();
  }

  @override
  void dispose() {
    _controller.nomeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gerenciamento de Cores"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _controller.nomeController,
              decoration: const InputDecoration(labelText: 'Nome da Cor'),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () async {
                    if (_controller.editando) {
                      await _controller.updateCor();
                    } else {
                      await _controller.addCor(_controller.nomeController.text);
                    }
                    setState(() {});
                  },
                  child: Text(_controller.editando ? 'Atualizar' : 'Adicionar'),
                ),
                const SizedBox(width: 10),
                if (_controller.editando)
                  ElevatedButton(
                    onPressed: () {
                      _controller.limparCampos();
                      setState(() {
                        _controller.editando = false;
                      });
                    },
                    child: const Text('Cancelar'),
                  ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: FutureBuilder<List<Core>>(
                future: _controller.fetchCores(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }
                  if (snapshot.hasError) {
                    return const Text('Erro ao carregar cores');
                  }

                  final cores = snapshot.data ?? [];

                  if (cores.isEmpty) {
                    return const Text('Nenhuma cor cadastrada');
                  }

                  return ListView.builder(
                    itemCount: cores.length,
                    itemBuilder: (context, index) {
                      final cor = cores[index];

                      return ListTile(
                        title: Text(cor.nome),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () {
                                _controller.preencherCampos(cor);
                                setState(() {});
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () async {
                                await _controller.deleteCor(cor.pkcor);
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
