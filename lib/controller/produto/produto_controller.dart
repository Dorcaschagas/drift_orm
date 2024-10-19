import 'package:drift_orm/database/app_database.dart';
import 'package:drift_orm/repository/produto/produto_repository.dart';
import 'package:flutter/material.dart';

class ProdutoController {
  final ProdutoRepository _repository;
  TextEditingController nomeController = TextEditingController();
  TextEditingController precoController = TextEditingController();
  int? pkProdutoEdit;
  int? fkCor;

  ProdutoController(this._repository);

  void limparCampos() {
    nomeController.clear();
    precoController.clear();
  }

  void preencherCampos(Produto produto) {
    nomeController.text = produto.nome;
    precoController.text = produto.preco.toString();
    pkProdutoEdit = produto.pkproduto;
    fkCor = produto.fkCor;
  }

  Future<void> addProduto(String nome, double preco, int fkCor) async {
    final produto = Produto(nome: nome, preco: preco, fkCor: fkCor, pkproduto: 0);
    await _repository.insertProduto(produto);
    limparCampos();
  }

  Future<List<Produto>> fetchProdutos() async {
    return await _repository.getAllProdutos();
  }

  Future<void> updateProduto(pkProdutoEdit) async {
    final produto = Produto(pkproduto: pkProdutoEdit, nome: nomeController.text, preco: double.parse(precoController.text), fkCor: fkCor!);
    await _repository.updateProduto(produto);
    limparCampos();
  }

  Future<void> deleteProduto(int pkproduto) async {
    await _repository.deleteProduto(pkproduto);
  }
}
