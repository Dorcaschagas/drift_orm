import 'package:drift_orm/database/app_database.dart';

class ProdutoRepository {
  final AppDatabase db;

  ProdutoRepository(this.db);
  Future<List<Produto>> getAllProdutos() => db.select(db.produtos).get();
  Future insertProduto(Produto produto) => db.into(db.produtos).insert(produto);
  Future updateProduto(Produto produto) =>
      db.update(db.produtos).replace(produto);
  Future deleteProduto(int id) =>
      (db.delete(db.produtos)..where((tbl) => tbl.pkproduto.equals(id))).go();
}
