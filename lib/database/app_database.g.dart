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

class $ProdutosTable extends Produtos with TableInfo<$ProdutosTable, Produto> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProdutosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pkprodutoMeta =
      const VerificationMeta('pkproduto');
  @override
  late final GeneratedColumn<int> pkproduto = GeneratedColumn<int>(
      'pkproduto', aliasedName, false,
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
  static const VerificationMeta _precoMeta = const VerificationMeta('preco');
  @override
  late final GeneratedColumn<double> preco = GeneratedColumn<double>(
      'preco', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _fkCorMeta = const VerificationMeta('fkCor');
  @override
  late final GeneratedColumn<int> fkCor = GeneratedColumn<int>(
      'fk_cor', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'REFERENCES cores(pkcor)');
  @override
  List<GeneratedColumn> get $columns => [pkproduto, nome, preco, fkCor];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'produtos';
  @override
  VerificationContext validateIntegrity(Insertable<Produto> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pkproduto')) {
      context.handle(_pkprodutoMeta,
          pkproduto.isAcceptableOrUnknown(data['pkproduto']!, _pkprodutoMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('preco')) {
      context.handle(
          _precoMeta, preco.isAcceptableOrUnknown(data['preco']!, _precoMeta));
    } else if (isInserting) {
      context.missing(_precoMeta);
    }
    if (data.containsKey('fk_cor')) {
      context.handle(
          _fkCorMeta, fkCor.isAcceptableOrUnknown(data['fk_cor']!, _fkCorMeta));
    } else if (isInserting) {
      context.missing(_fkCorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {pkproduto};
  @override
  Produto map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Produto(
      pkproduto: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pkproduto'])!,
      nome: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nome'])!,
      preco: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}preco'])!,
      fkCor: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}fk_cor'])!,
    );
  }

  @override
  $ProdutosTable createAlias(String alias) {
    return $ProdutosTable(attachedDatabase, alias);
  }
}

class Produto extends DataClass implements Insertable<Produto> {
  final int pkproduto;
  final String nome;
  final double preco;
  final int fkCor;
  const Produto(
      {required this.pkproduto,
      required this.nome,
      required this.preco,
      required this.fkCor});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['pkproduto'] = Variable<int>(pkproduto);
    map['nome'] = Variable<String>(nome);
    map['preco'] = Variable<double>(preco);
    map['fk_cor'] = Variable<int>(fkCor);
    return map;
  }

  ProdutosCompanion toCompanion(bool nullToAbsent) {
    return ProdutosCompanion(
      pkproduto: Value(pkproduto),
      nome: Value(nome),
      preco: Value(preco),
      fkCor: Value(fkCor),
    );
  }

  factory Produto.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Produto(
      pkproduto: serializer.fromJson<int>(json['pkproduto']),
      nome: serializer.fromJson<String>(json['nome']),
      preco: serializer.fromJson<double>(json['preco']),
      fkCor: serializer.fromJson<int>(json['fkCor']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pkproduto': serializer.toJson<int>(pkproduto),
      'nome': serializer.toJson<String>(nome),
      'preco': serializer.toJson<double>(preco),
      'fkCor': serializer.toJson<int>(fkCor),
    };
  }

  Produto copyWith({int? pkproduto, String? nome, double? preco, int? fkCor}) =>
      Produto(
        pkproduto: pkproduto ?? this.pkproduto,
        nome: nome ?? this.nome,
        preco: preco ?? this.preco,
        fkCor: fkCor ?? this.fkCor,
      );
  Produto copyWithCompanion(ProdutosCompanion data) {
    return Produto(
      pkproduto: data.pkproduto.present ? data.pkproduto.value : this.pkproduto,
      nome: data.nome.present ? data.nome.value : this.nome,
      preco: data.preco.present ? data.preco.value : this.preco,
      fkCor: data.fkCor.present ? data.fkCor.value : this.fkCor,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Produto(')
          ..write('pkproduto: $pkproduto, ')
          ..write('nome: $nome, ')
          ..write('preco: $preco, ')
          ..write('fkCor: $fkCor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(pkproduto, nome, preco, fkCor);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Produto &&
          other.pkproduto == this.pkproduto &&
          other.nome == this.nome &&
          other.preco == this.preco &&
          other.fkCor == this.fkCor);
}

class ProdutosCompanion extends UpdateCompanion<Produto> {
  final Value<int> pkproduto;
  final Value<String> nome;
  final Value<double> preco;
  final Value<int> fkCor;
  const ProdutosCompanion({
    this.pkproduto = const Value.absent(),
    this.nome = const Value.absent(),
    this.preco = const Value.absent(),
    this.fkCor = const Value.absent(),
  });
  ProdutosCompanion.insert({
    this.pkproduto = const Value.absent(),
    required String nome,
    required double preco,
    required int fkCor,
  })  : nome = Value(nome),
        preco = Value(preco),
        fkCor = Value(fkCor);
  static Insertable<Produto> custom({
    Expression<int>? pkproduto,
    Expression<String>? nome,
    Expression<double>? preco,
    Expression<int>? fkCor,
  }) {
    return RawValuesInsertable({
      if (pkproduto != null) 'pkproduto': pkproduto,
      if (nome != null) 'nome': nome,
      if (preco != null) 'preco': preco,
      if (fkCor != null) 'fk_cor': fkCor,
    });
  }

  ProdutosCompanion copyWith(
      {Value<int>? pkproduto,
      Value<String>? nome,
      Value<double>? preco,
      Value<int>? fkCor}) {
    return ProdutosCompanion(
      pkproduto: pkproduto ?? this.pkproduto,
      nome: nome ?? this.nome,
      preco: preco ?? this.preco,
      fkCor: fkCor ?? this.fkCor,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pkproduto.present) {
      map['pkproduto'] = Variable<int>(pkproduto.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (preco.present) {
      map['preco'] = Variable<double>(preco.value);
    }
    if (fkCor.present) {
      map['fk_cor'] = Variable<int>(fkCor.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProdutosCompanion(')
          ..write('pkproduto: $pkproduto, ')
          ..write('nome: $nome, ')
          ..write('preco: $preco, ')
          ..write('fkCor: $fkCor')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CoresTable cores = $CoresTable(this);
  late final $ProdutosTable produtos = $ProdutosTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [cores, produtos];
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
typedef $$ProdutosTableCreateCompanionBuilder = ProdutosCompanion Function({
  Value<int> pkproduto,
  required String nome,
  required double preco,
  required int fkCor,
});
typedef $$ProdutosTableUpdateCompanionBuilder = ProdutosCompanion Function({
  Value<int> pkproduto,
  Value<String> nome,
  Value<double> preco,
  Value<int> fkCor,
});

class $$ProdutosTableFilterComposer
    extends Composer<_$AppDatabase, $ProdutosTable> {
  $$ProdutosTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get pkproduto => $composableBuilder(
      column: $table.pkproduto, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nome => $composableBuilder(
      column: $table.nome, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get preco => $composableBuilder(
      column: $table.preco, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get fkCor => $composableBuilder(
      column: $table.fkCor, builder: (column) => ColumnFilters(column));
}

class $$ProdutosTableOrderingComposer
    extends Composer<_$AppDatabase, $ProdutosTable> {
  $$ProdutosTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get pkproduto => $composableBuilder(
      column: $table.pkproduto, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nome => $composableBuilder(
      column: $table.nome, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get preco => $composableBuilder(
      column: $table.preco, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get fkCor => $composableBuilder(
      column: $table.fkCor, builder: (column) => ColumnOrderings(column));
}

class $$ProdutosTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProdutosTable> {
  $$ProdutosTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get pkproduto =>
      $composableBuilder(column: $table.pkproduto, builder: (column) => column);

  GeneratedColumn<String> get nome =>
      $composableBuilder(column: $table.nome, builder: (column) => column);

  GeneratedColumn<double> get preco =>
      $composableBuilder(column: $table.preco, builder: (column) => column);

  GeneratedColumn<int> get fkCor =>
      $composableBuilder(column: $table.fkCor, builder: (column) => column);
}

class $$ProdutosTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ProdutosTable,
    Produto,
    $$ProdutosTableFilterComposer,
    $$ProdutosTableOrderingComposer,
    $$ProdutosTableAnnotationComposer,
    $$ProdutosTableCreateCompanionBuilder,
    $$ProdutosTableUpdateCompanionBuilder,
    (Produto, BaseReferences<_$AppDatabase, $ProdutosTable, Produto>),
    Produto,
    PrefetchHooks Function()> {
  $$ProdutosTableTableManager(_$AppDatabase db, $ProdutosTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProdutosTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProdutosTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProdutosTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> pkproduto = const Value.absent(),
            Value<String> nome = const Value.absent(),
            Value<double> preco = const Value.absent(),
            Value<int> fkCor = const Value.absent(),
          }) =>
              ProdutosCompanion(
            pkproduto: pkproduto,
            nome: nome,
            preco: preco,
            fkCor: fkCor,
          ),
          createCompanionCallback: ({
            Value<int> pkproduto = const Value.absent(),
            required String nome,
            required double preco,
            required int fkCor,
          }) =>
              ProdutosCompanion.insert(
            pkproduto: pkproduto,
            nome: nome,
            preco: preco,
            fkCor: fkCor,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ProdutosTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ProdutosTable,
    Produto,
    $$ProdutosTableFilterComposer,
    $$ProdutosTableOrderingComposer,
    $$ProdutosTableAnnotationComposer,
    $$ProdutosTableCreateCompanionBuilder,
    $$ProdutosTableUpdateCompanionBuilder,
    (Produto, BaseReferences<_$AppDatabase, $ProdutosTable, Produto>),
    Produto,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CoresTableTableManager get cores =>
      $$CoresTableTableManager(_db, _db.cores);
  $$ProdutosTableTableManager get produtos =>
      $$ProdutosTableTableManager(_db, _db.produtos);
}
