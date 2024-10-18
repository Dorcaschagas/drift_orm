import 'package:drift/drift.dart';

class Cores extends Table {
  IntColumn get pkcor => integer().autoIncrement()();
  TextColumn get nome => text().withLength(min: 1, max: 50)();
}
