import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:drift_orm/dto/login/login_dto.dart';
import 'package:drift_orm/dto/produto/produto_dto.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import '../dto/cor/cor.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [Cores, Produtos, LoginDto])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 3;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onUpgrade: (Migrator m, int from, int to) async {
          if (from < 2) {
            await m.createTable(cores);
          }

          if (from < 3) {
            await m.createTable(produtos);
          }

          if (from < 4) {
            await m.createTable(loginDto);
          }
        },
        onCreate: (Migrator m) async {
          await m.createAll();
        },
      );
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app.db'));
    return NativeDatabase(file);
  });
}
