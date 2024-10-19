import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import '../../repository/cor/cor_repository.dart';
import '../../database/app_database.dart';

class CorController {
  final CorRepository _repository;
  TextEditingController nomeController = TextEditingController();
  
  bool editando = false;
  int? pkcorEdit;

  CorController(this._repository);

  void limparCampos() {
    nomeController.clear();
  }

  void preencherCampos(Core cor) {
    nomeController.text = cor.nome;
    pkcorEdit = cor.pkcor;
    editando = true;
  }

  Future<void> addCor(String nome) async {
    final cor = CoresCompanion(
      nome: Value(nome),
    );
    await _repository.insertCor(cor);
    limparCampos();
  }

  Future<List<Core>> fetchCores() async {
    return await _repository.getCores();
  }

  Future<void> updateCor() async {
    final cor = Core(
      pkcor: pkcorEdit!,
      nome: nomeController.text,
    );
    await _repository.updateCor(cor);
    limparCampos();
    editando = false;
  }

  Future<void> deleteCor(int pkcor) async {
    await _repository.deleteCor(pkcor);
  }
}
