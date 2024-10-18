// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CoresTable extends Cores with TableInfo<$CoresTable, Core> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CoresTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pkcorMeta = const VerificationMeta('pkcor');
  @override
  late final GeneratedColumn<int> pkcor = GeneratedColumn<int>(
      'pkcor', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
      'nome', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [pkcor, nome];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cores';
  @override
  VerificationContext validateIntegrity(Insertable<Core> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pkcor')) {
      context.handle(
          _pkcorMeta, pkcor.isAcceptableOrUnknown(data['pkcor']!, _pkcorMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {pkcor};
  @override
  Core map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Core(
      pkcor: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pkcor'])!,
      nome: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nome'])!,
    );
  }

  @override
  $CoresTable createAlias(String alias) {
    return $CoresTable(attachedDatabase, alias);
  }
}

class Core extends DataClass implements Insertable<Core> {
  final int pkcor;
  final String nome;
  const Core({required this.pkcor, required this.nome});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['pkcor'] = Variable<int>(pkcor);
    map['nome'] = Variable<String>(nome);
    return map;
  }

  CoresCompanion toCompanion(bool nullToAbsent) {
    return CoresCompanion(
      pkcor: Value(pkcor),
      nome: Value(nome),
    );
  }

  factory Core.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Core(
      pkcor: serializer.fromJson<int>(json['pkcor']),
      nome: serializer.fromJson<String>(json['nome']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pkcor': serializer.toJson<int>(pkcor),
      'nome': serializer.toJson<String>(nome),
    };
  }

  Core copyWith({int? pkcor, String? nome}) => Core(
        pkcor: pkcor ?? this.pkcor,
        nome: nome ?? this.nome,
      );
  Core copyWithCompanion(CoresCompanion data) {
    return Core(
      pkcor: data.pkcor.present ? data.pkcor.value : this.pkcor,
      nome: data.nome.present ? data.nome.value : this.nome,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Core(')
          ..write('pkcor: $pkcor, ')
          ..write('nome: $nome')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(pkcor, nome);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Core && other.pkcor == this.pkcor && other.nome == this.nome);
}

class CoresCompanion extends UpdateCompanion<Core> {
  final Value<int> pkcor;
  final Value<String> nome;
  const CoresCompanion({
    this.pkcor = const Value.absent(),
    this.nome = const Value.absent(),
  });
  CoresCompanion.insert({
    this.pkcor = const Value.absent(),
    required String nome,
  }) : nome = Value(nome);
  static Insertable<Core> custom({
    Expression<int>? pkcor,
    Expression<String>? nome,
  }) {
    return RawValuesInsertable({
      if (pkcor != null) 'pkcor': pkcor,
      if (nome != null) 'nome': nome,
    });
  }

  CoresCompanion copyWith({Value<int>? pkcor, Value<String>? nome}) {
    return CoresCompanion(
      pkcor: pkcor ?? this.pkcor,
      nome: nome ?? this.nome,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pkcor.present) {
      map['pkcor'] = Variable<int>(pkcor.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CoresCompanion(')
          ..write('pkcor: $pkcor, ')
          ..write('nome: $nome')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CoresTable cores = $CoresTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [cores];
}

typedef $$CoresTableCreateCompanionBuilder = CoresCompanion Function({
  Value<int> pkcor,
  required String nome,
});
typedef $$CoresTableUpdateCompanionBuilder = CoresCompanion Function({
  Value<int> pkcor,
  Value<String> nome,
});

class $$CoresTableFilterComposer extends Composer<_$AppDatabase, $CoresTable> {
  $$CoresTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get pkcor => $composableBuilder(
      column: $table.pkcor, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nome => $composableBuilder(
      column: $table.nome, builder: (column) => ColumnFilters(column));
}

class $$CoresTableOrderingComposer
    extends Composer<_$AppDatabase, $CoresTable> {
  $$CoresTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get pkcor => $composableBuilder(
      column: $table.pkcor, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nome => $composableBuilder(
      column: $table.nome, builder: (column) => ColumnOrderings(column));
}

class $$CoresTableAnnotationComposer
    extends Composer<_$AppDatabase, $CoresTable> {
  $$CoresTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get pkcor =>
      $composableBuilder(column: $table.pkcor, builder: (column) => column);

  GeneratedColumn<String> get nome =>
      $composableBuilder(column: $table.nome, builder: (column) => column);
}

class $$CoresTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CoresTable,
    Core,
    $$CoresTableFilterComposer,
    $$CoresTableOrderingComposer,
    $$CoresTableAnnotationComposer,
    $$CoresTableCreateCompanionBuilder,
    $$CoresTableUpdateCompanionBuilder,
    (Core, BaseReferences<_$AppDatabase, $CoresTable, Core>),
    Core,
    PrefetchHooks Function()> {
  $$CoresTableTableManager(_$AppDatabase db, $CoresTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CoresTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CoresTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CoresTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> pkcor = const Value.absent(),
            Value<String> nome = const Value.absent(),
          }) =>
              CoresCompanion(
            pkcor: pkcor,
            nome: nome,
          ),
          createCompanionCallback: ({
            Value<int> pkcor = const Value.absent(),
            required String nome,
          }) =>
              CoresCompanion.insert(
            pkcor: pkcor,
            nome: nome,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CoresTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CoresTable,
    Core,
    $$CoresTableFilterComposer,
    $$CoresTableOrderingComposer,
    $$CoresTableAnnotationComposer,
    $$CoresTableCreateCompanionBuilder,
    $$CoresTableUpdateCompanionBuilder,
    (Core, BaseReferences<_$AppDatabase, $CoresTable, Core>),
    Core,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CoresTableTableManager get cores =>
      $$CoresTableTableManager(_db, _db.cores);
}
