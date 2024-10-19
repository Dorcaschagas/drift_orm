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

class $LoginDtoTable extends LoginDto
    with TableInfo<$LoginDtoTable, LoginDtoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LoginDtoTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pklogingMeta =
      const VerificationMeta('pkloging');
  @override
  late final GeneratedColumn<int> pkloging = GeneratedColumn<int>(
      'pkloging', aliasedName, false,
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
  static const VerificationMeta _senhaMeta = const VerificationMeta('senha');
  @override
  late final GeneratedColumn<String> senha = GeneratedColumn<String>(
      'senha', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _telefoneMeta =
      const VerificationMeta('telefone');
  @override
  late final GeneratedColumn<String> telefone = GeneratedColumn<String>(
      'telefone', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _cpfMeta = const VerificationMeta('cpf');
  @override
  late final GeneratedColumn<String> cpf = GeneratedColumn<String>(
      'cpf', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [pkloging, nome, senha, email, telefone, cpf];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'login_dto';
  @override
  VerificationContext validateIntegrity(Insertable<LoginDtoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('pkloging')) {
      context.handle(_pklogingMeta,
          pkloging.isAcceptableOrUnknown(data['pkloging']!, _pklogingMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('senha')) {
      context.handle(
          _senhaMeta, senha.isAcceptableOrUnknown(data['senha']!, _senhaMeta));
    } else if (isInserting) {
      context.missing(_senhaMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('telefone')) {
      context.handle(_telefoneMeta,
          telefone.isAcceptableOrUnknown(data['telefone']!, _telefoneMeta));
    } else if (isInserting) {
      context.missing(_telefoneMeta);
    }
    if (data.containsKey('cpf')) {
      context.handle(
          _cpfMeta, cpf.isAcceptableOrUnknown(data['cpf']!, _cpfMeta));
    } else if (isInserting) {
      context.missing(_cpfMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {pkloging};
  @override
  LoginDtoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LoginDtoData(
      pkloging: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pkloging'])!,
      nome: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nome'])!,
      senha: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}senha'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      telefone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}telefone'])!,
      cpf: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cpf'])!,
    );
  }

  @override
  $LoginDtoTable createAlias(String alias) {
    return $LoginDtoTable(attachedDatabase, alias);
  }
}

class LoginDtoData extends DataClass implements Insertable<LoginDtoData> {
  final int pkloging;
  final String nome;
  final String senha;
  final String email;
  final String telefone;
  final String cpf;
  const LoginDtoData(
      {required this.pkloging,
      required this.nome,
      required this.senha,
      required this.email,
      required this.telefone,
      required this.cpf});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['pkloging'] = Variable<int>(pkloging);
    map['nome'] = Variable<String>(nome);
    map['senha'] = Variable<String>(senha);
    map['email'] = Variable<String>(email);
    map['telefone'] = Variable<String>(telefone);
    map['cpf'] = Variable<String>(cpf);
    return map;
  }

  LoginDtoCompanion toCompanion(bool nullToAbsent) {
    return LoginDtoCompanion(
      pkloging: Value(pkloging),
      nome: Value(nome),
      senha: Value(senha),
      email: Value(email),
      telefone: Value(telefone),
      cpf: Value(cpf),
    );
  }

  factory LoginDtoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LoginDtoData(
      pkloging: serializer.fromJson<int>(json['pkloging']),
      nome: serializer.fromJson<String>(json['nome']),
      senha: serializer.fromJson<String>(json['senha']),
      email: serializer.fromJson<String>(json['email']),
      telefone: serializer.fromJson<String>(json['telefone']),
      cpf: serializer.fromJson<String>(json['cpf']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'pkloging': serializer.toJson<int>(pkloging),
      'nome': serializer.toJson<String>(nome),
      'senha': serializer.toJson<String>(senha),
      'email': serializer.toJson<String>(email),
      'telefone': serializer.toJson<String>(telefone),
      'cpf': serializer.toJson<String>(cpf),
    };
  }

  LoginDtoData copyWith(
          {int? pkloging,
          String? nome,
          String? senha,
          String? email,
          String? telefone,
          String? cpf}) =>
      LoginDtoData(
        pkloging: pkloging ?? this.pkloging,
        nome: nome ?? this.nome,
        senha: senha ?? this.senha,
        email: email ?? this.email,
        telefone: telefone ?? this.telefone,
        cpf: cpf ?? this.cpf,
      );
  LoginDtoData copyWithCompanion(LoginDtoCompanion data) {
    return LoginDtoData(
      pkloging: data.pkloging.present ? data.pkloging.value : this.pkloging,
      nome: data.nome.present ? data.nome.value : this.nome,
      senha: data.senha.present ? data.senha.value : this.senha,
      email: data.email.present ? data.email.value : this.email,
      telefone: data.telefone.present ? data.telefone.value : this.telefone,
      cpf: data.cpf.present ? data.cpf.value : this.cpf,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LoginDtoData(')
          ..write('pkloging: $pkloging, ')
          ..write('nome: $nome, ')
          ..write('senha: $senha, ')
          ..write('email: $email, ')
          ..write('telefone: $telefone, ')
          ..write('cpf: $cpf')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(pkloging, nome, senha, email, telefone, cpf);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LoginDtoData &&
          other.pkloging == this.pkloging &&
          other.nome == this.nome &&
          other.senha == this.senha &&
          other.email == this.email &&
          other.telefone == this.telefone &&
          other.cpf == this.cpf);
}

class LoginDtoCompanion extends UpdateCompanion<LoginDtoData> {
  final Value<int> pkloging;
  final Value<String> nome;
  final Value<String> senha;
  final Value<String> email;
  final Value<String> telefone;
  final Value<String> cpf;
  const LoginDtoCompanion({
    this.pkloging = const Value.absent(),
    this.nome = const Value.absent(),
    this.senha = const Value.absent(),
    this.email = const Value.absent(),
    this.telefone = const Value.absent(),
    this.cpf = const Value.absent(),
  });
  LoginDtoCompanion.insert({
    this.pkloging = const Value.absent(),
    required String nome,
    required String senha,
    required String email,
    required String telefone,
    required String cpf,
  })  : nome = Value(nome),
        senha = Value(senha),
        email = Value(email),
        telefone = Value(telefone),
        cpf = Value(cpf);
  static Insertable<LoginDtoData> custom({
    Expression<int>? pkloging,
    Expression<String>? nome,
    Expression<String>? senha,
    Expression<String>? email,
    Expression<String>? telefone,
    Expression<String>? cpf,
  }) {
    return RawValuesInsertable({
      if (pkloging != null) 'pkloging': pkloging,
      if (nome != null) 'nome': nome,
      if (senha != null) 'senha': senha,
      if (email != null) 'email': email,
      if (telefone != null) 'telefone': telefone,
      if (cpf != null) 'cpf': cpf,
    });
  }

  LoginDtoCompanion copyWith(
      {Value<int>? pkloging,
      Value<String>? nome,
      Value<String>? senha,
      Value<String>? email,
      Value<String>? telefone,
      Value<String>? cpf}) {
    return LoginDtoCompanion(
      pkloging: pkloging ?? this.pkloging,
      nome: nome ?? this.nome,
      senha: senha ?? this.senha,
      email: email ?? this.email,
      telefone: telefone ?? this.telefone,
      cpf: cpf ?? this.cpf,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pkloging.present) {
      map['pkloging'] = Variable<int>(pkloging.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (senha.present) {
      map['senha'] = Variable<String>(senha.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (telefone.present) {
      map['telefone'] = Variable<String>(telefone.value);
    }
    if (cpf.present) {
      map['cpf'] = Variable<String>(cpf.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LoginDtoCompanion(')
          ..write('pkloging: $pkloging, ')
          ..write('nome: $nome, ')
          ..write('senha: $senha, ')
          ..write('email: $email, ')
          ..write('telefone: $telefone, ')
          ..write('cpf: $cpf')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CoresTable cores = $CoresTable(this);
  late final $ProdutosTable produtos = $ProdutosTable(this);
  late final $LoginDtoTable loginDto = $LoginDtoTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [cores, produtos, loginDto];
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
typedef $$LoginDtoTableCreateCompanionBuilder = LoginDtoCompanion Function({
  Value<int> pkloging,
  required String nome,
  required String senha,
  required String email,
  required String telefone,
  required String cpf,
});
typedef $$LoginDtoTableUpdateCompanionBuilder = LoginDtoCompanion Function({
  Value<int> pkloging,
  Value<String> nome,
  Value<String> senha,
  Value<String> email,
  Value<String> telefone,
  Value<String> cpf,
});

class $$LoginDtoTableFilterComposer
    extends Composer<_$AppDatabase, $LoginDtoTable> {
  $$LoginDtoTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get pkloging => $composableBuilder(
      column: $table.pkloging, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nome => $composableBuilder(
      column: $table.nome, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get senha => $composableBuilder(
      column: $table.senha, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get telefone => $composableBuilder(
      column: $table.telefone, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cpf => $composableBuilder(
      column: $table.cpf, builder: (column) => ColumnFilters(column));
}

class $$LoginDtoTableOrderingComposer
    extends Composer<_$AppDatabase, $LoginDtoTable> {
  $$LoginDtoTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get pkloging => $composableBuilder(
      column: $table.pkloging, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nome => $composableBuilder(
      column: $table.nome, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get senha => $composableBuilder(
      column: $table.senha, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get telefone => $composableBuilder(
      column: $table.telefone, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cpf => $composableBuilder(
      column: $table.cpf, builder: (column) => ColumnOrderings(column));
}

class $$LoginDtoTableAnnotationComposer
    extends Composer<_$AppDatabase, $LoginDtoTable> {
  $$LoginDtoTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get pkloging =>
      $composableBuilder(column: $table.pkloging, builder: (column) => column);

  GeneratedColumn<String> get nome =>
      $composableBuilder(column: $table.nome, builder: (column) => column);

  GeneratedColumn<String> get senha =>
      $composableBuilder(column: $table.senha, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get telefone =>
      $composableBuilder(column: $table.telefone, builder: (column) => column);

  GeneratedColumn<String> get cpf =>
      $composableBuilder(column: $table.cpf, builder: (column) => column);
}

class $$LoginDtoTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LoginDtoTable,
    LoginDtoData,
    $$LoginDtoTableFilterComposer,
    $$LoginDtoTableOrderingComposer,
    $$LoginDtoTableAnnotationComposer,
    $$LoginDtoTableCreateCompanionBuilder,
    $$LoginDtoTableUpdateCompanionBuilder,
    (LoginDtoData, BaseReferences<_$AppDatabase, $LoginDtoTable, LoginDtoData>),
    LoginDtoData,
    PrefetchHooks Function()> {
  $$LoginDtoTableTableManager(_$AppDatabase db, $LoginDtoTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LoginDtoTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LoginDtoTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LoginDtoTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> pkloging = const Value.absent(),
            Value<String> nome = const Value.absent(),
            Value<String> senha = const Value.absent(),
            Value<String> email = const Value.absent(),
            Value<String> telefone = const Value.absent(),
            Value<String> cpf = const Value.absent(),
          }) =>
              LoginDtoCompanion(
            pkloging: pkloging,
            nome: nome,
            senha: senha,
            email: email,
            telefone: telefone,
            cpf: cpf,
          ),
          createCompanionCallback: ({
            Value<int> pkloging = const Value.absent(),
            required String nome,
            required String senha,
            required String email,
            required String telefone,
            required String cpf,
          }) =>
              LoginDtoCompanion.insert(
            pkloging: pkloging,
            nome: nome,
            senha: senha,
            email: email,
            telefone: telefone,
            cpf: cpf,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LoginDtoTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LoginDtoTable,
    LoginDtoData,
    $$LoginDtoTableFilterComposer,
    $$LoginDtoTableOrderingComposer,
    $$LoginDtoTableAnnotationComposer,
    $$LoginDtoTableCreateCompanionBuilder,
    $$LoginDtoTableUpdateCompanionBuilder,
    (LoginDtoData, BaseReferences<_$AppDatabase, $LoginDtoTable, LoginDtoData>),
    LoginDtoData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CoresTableTableManager get cores =>
      $$CoresTableTableManager(_db, _db.cores);
  $$ProdutosTableTableManager get produtos =>
      $$ProdutosTableTableManager(_db, _db.produtos);
  $$LoginDtoTableTableManager get loginDto =>
      $$LoginDtoTableTableManager(_db, _db.loginDto);
}
