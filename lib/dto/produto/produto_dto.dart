import 'package:drift/drift.dart';

class Produtos extends Table {
  IntColumn get pkproduto => integer().autoIncrement()();
  TextColumn get nome => text().withLength(min: 1, max: 50)();
  RealColumn get preco => real()();

  // Foreign Key referenciando a tabela de cores
  IntColumn get fkCor =>
      integer().customConstraint('REFERENCES cores(pkcor)')();
}
