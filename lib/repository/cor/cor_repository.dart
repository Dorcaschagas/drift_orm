import '../../database/app_database.dart';

class CorRepository {
  final AppDatabase _db;

  CorRepository(this._db);

  Future<List<Core>> getCores() => _db.select(_db.cores).get();

  Future<void> insertCor(CoresCompanion cor) => _db.into(_db.cores).insert(cor);

  Future<void> updateCor(Core cor) => _db.update(_db.cores).replace(cor);

  Future<void> deleteCor(int pkcor) =>
      (_db.delete(_db.cores)..where((t) => t.pkcor.equals(pkcor))).go();
}
