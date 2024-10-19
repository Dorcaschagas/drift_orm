import 'package:drift/drift.dart';

class LoginDto extends Table {
  IntColumn get pkloging => integer().autoIncrement()();
  TextColumn get nome => text().withLength(min: 1, max: 50)();
  TextColumn get senha => text().withLength(min: 1, max: 50)();
  TextColumn get email => text().withLength(min: 1, max: 50)();
  TextColumn get telefone => text().withLength(min: 1, max: 50)();
  TextColumn get cpf => text().withLength(min: 1, max: 50)();
}