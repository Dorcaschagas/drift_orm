// view/produto_view.dart
import 'package:drift_orm/controller/cor/cor_controller.dart';
import 'package:drift_orm/controller/produto/produto_controller.dart';
import 'package:drift_orm/database/app_database.dart';
import 'package:drift_orm/repository/cor/cor_repository.dart';
import 'package:drift_orm/repository/produto/produto_repository.dart';
import 'package:drift_orm/view/menu/menu_app.dart';
import 'package:flutter/material.dart';

class ProdutoView extends StatefulWidget {
  const ProdutoView({super.key});

  @override
  _ProdutoViewState createState() => _ProdutoViewState();
}

class _ProdutoViewState extends State<ProdutoView> {
  late final ProdutoController _controller;
  late final CorController _corController;

  @override
  void initState() {
    super.initState();
    final db = AppDatabase();
    _controller = ProdutoController(ProdutoRepository(db));
    _corController = CorController(CorRepository(db));
    _controller.fetchProdutos();
    _corController.fetchCores();
  }

  @override
  void dispose() {
    _controller.nomeController.dispose();
    _controller.precoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gerenciamento de Produtos"),
      ),
      drawer: const MenuApp(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _controller.nomeController,
              decoration: const InputDecoration(labelText: 'Nome do Produto'),
            ),
            TextField(
              controller: _controller.precoController,
              decoration: const InputDecoration(labelText: 'Preço'),
              keyboardType: TextInputType.number,
            ),
            FutureBuilder<List<Core>>(
              future: _corController.fetchCores(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }
                if (snapshot.hasError || snapshot.data == null) {
                  return const Text('Erro ao carregar cores');
                }

                return DropdownButton<int>(
                  value: _controller.fkCor,
                  items: snapshot.data!
                      .map((cor) => DropdownMenuItem<int>(
                            value: cor.pkcor,
                            child: Text(cor.nome),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _controller.fkCor = value;
                    });
                  },
                  hint: const Text('Selecione uma cor'),
                );
              },
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () async {
                    if (_controller.pkProdutoEdit != null) {
                      await _controller
                          .updateProduto(_controller.pkProdutoEdit);
                    } else {
                      await _controller.addProduto(
                          _controller.nomeController.text,
                          double.parse(_controller.precoController.text),
                          _controller.fkCor!);
                    }
                    setState(() {});
                  },
                  child: const Text('Salvar'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: FutureBuilder<List<Produto>>(
                future: _controller.fetchProdutos(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }
                  if (snapshot.hasError) {
                    return const Text('Erro ao carregar produtos');
                  }

                  final produtos = snapshot.data ?? [];

                  return ListView.builder(
                    itemCount: produtos.length,
                    itemBuilder: (context, index) {
                      final produto = produtos[index];

                      return ListTile(
                        title: Text('${produto.nome} - ${produto.preco}'),
                        subtitle: Text('Cor: ${produto.fkCor}'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () {
                                _controller.preencherCampos(produto);
                                setState(() {});
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () async {
                                await _controller
                                    .deleteProduto(produto.pkproduto);
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
