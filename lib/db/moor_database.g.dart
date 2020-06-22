// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Autor extends DataClass implements Insertable<Autor> {
  final int id;
  final String nome;
  final String descricao;
  final DateTime dateNascimento;
  final DateTime dateMorte;
  Autor(
      {@required this.id,
      @required this.nome,
      @required this.descricao,
      this.dateNascimento,
      this.dateMorte});
  factory Autor.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Autor(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      nome: stringType.mapFromDatabaseResponse(data['${effectivePrefix}nome']),
      descricao: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}descricao']),
      dateNascimento: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}date_nascimento']),
      dateMorte: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}date_morte']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || nome != null) {
      map['nome'] = Variable<String>(nome);
    }
    if (!nullToAbsent || descricao != null) {
      map['descricao'] = Variable<String>(descricao);
    }
    if (!nullToAbsent || dateNascimento != null) {
      map['date_nascimento'] = Variable<DateTime>(dateNascimento);
    }
    if (!nullToAbsent || dateMorte != null) {
      map['date_morte'] = Variable<DateTime>(dateMorte);
    }
    return map;
  }

  AutorsCompanion toCompanion(bool nullToAbsent) {
    return AutorsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      nome: nome == null && nullToAbsent ? const Value.absent() : Value(nome),
      descricao: descricao == null && nullToAbsent
          ? const Value.absent()
          : Value(descricao),
      dateNascimento: dateNascimento == null && nullToAbsent
          ? const Value.absent()
          : Value(dateNascimento),
      dateMorte: dateMorte == null && nullToAbsent
          ? const Value.absent()
          : Value(dateMorte),
    );
  }

  factory Autor.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Autor(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String>(json['nome']),
      descricao: serializer.fromJson<String>(json['descricao']),
      dateNascimento: serializer.fromJson<DateTime>(json['dateNascimento']),
      dateMorte: serializer.fromJson<DateTime>(json['dateMorte']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String>(nome),
      'descricao': serializer.toJson<String>(descricao),
      'dateNascimento': serializer.toJson<DateTime>(dateNascimento),
      'dateMorte': serializer.toJson<DateTime>(dateMorte),
    };
  }

  Autor copyWith(
          {int id,
          String nome,
          String descricao,
          DateTime dateNascimento,
          DateTime dateMorte}) =>
      Autor(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        descricao: descricao ?? this.descricao,
        dateNascimento: dateNascimento ?? this.dateNascimento,
        dateMorte: dateMorte ?? this.dateMorte,
      );
  @override
  String toString() {
    return (StringBuffer('Autor(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('descricao: $descricao, ')
          ..write('dateNascimento: $dateNascimento, ')
          ..write('dateMorte: $dateMorte')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          nome.hashCode,
          $mrjc(descricao.hashCode,
              $mrjc(dateNascimento.hashCode, dateMorte.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Autor &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.descricao == this.descricao &&
          other.dateNascimento == this.dateNascimento &&
          other.dateMorte == this.dateMorte);
}

class AutorsCompanion extends UpdateCompanion<Autor> {
  final Value<int> id;
  final Value<String> nome;
  final Value<String> descricao;
  final Value<DateTime> dateNascimento;
  final Value<DateTime> dateMorte;
  const AutorsCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.descricao = const Value.absent(),
    this.dateNascimento = const Value.absent(),
    this.dateMorte = const Value.absent(),
  });
  AutorsCompanion.insert({
    this.id = const Value.absent(),
    @required String nome,
    @required String descricao,
    this.dateNascimento = const Value.absent(),
    this.dateMorte = const Value.absent(),
  })  : nome = Value(nome),
        descricao = Value(descricao);
  static Insertable<Autor> custom({
    Expression<int> id,
    Expression<String> nome,
    Expression<String> descricao,
    Expression<DateTime> dateNascimento,
    Expression<DateTime> dateMorte,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
      if (descricao != null) 'descricao': descricao,
      if (dateNascimento != null) 'date_nascimento': dateNascimento,
      if (dateMorte != null) 'date_morte': dateMorte,
    });
  }

  AutorsCompanion copyWith(
      {Value<int> id,
      Value<String> nome,
      Value<String> descricao,
      Value<DateTime> dateNascimento,
      Value<DateTime> dateMorte}) {
    return AutorsCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      descricao: descricao ?? this.descricao,
      dateNascimento: dateNascimento ?? this.dateNascimento,
      dateMorte: dateMorte ?? this.dateMorte,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (descricao.present) {
      map['descricao'] = Variable<String>(descricao.value);
    }
    if (dateNascimento.present) {
      map['date_nascimento'] = Variable<DateTime>(dateNascimento.value);
    }
    if (dateMorte.present) {
      map['date_morte'] = Variable<DateTime>(dateMorte.value);
    }
    return map;
  }
}

class $AutorsTable extends Autors with TableInfo<$AutorsTable, Autor> {
  final GeneratedDatabase _db;
  final String _alias;
  $AutorsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nomeMeta = const VerificationMeta('nome');
  GeneratedTextColumn _nome;
  @override
  GeneratedTextColumn get nome => _nome ??= _constructNome();
  GeneratedTextColumn _constructNome() {
    return GeneratedTextColumn('nome', $tableName, false,
        minTextLength: 3, maxTextLength: 50);
  }

  final VerificationMeta _descricaoMeta = const VerificationMeta('descricao');
  GeneratedTextColumn _descricao;
  @override
  GeneratedTextColumn get descricao => _descricao ??= _constructDescricao();
  GeneratedTextColumn _constructDescricao() {
    return GeneratedTextColumn('descricao', $tableName, false,
        minTextLength: 0, maxTextLength: 100);
  }

  final VerificationMeta _dateNascimentoMeta =
      const VerificationMeta('dateNascimento');
  GeneratedDateTimeColumn _dateNascimento;
  @override
  GeneratedDateTimeColumn get dateNascimento =>
      _dateNascimento ??= _constructDateNascimento();
  GeneratedDateTimeColumn _constructDateNascimento() {
    return GeneratedDateTimeColumn(
      'date_nascimento',
      $tableName,
      true,
    );
  }

  final VerificationMeta _dateMorteMeta = const VerificationMeta('dateMorte');
  GeneratedDateTimeColumn _dateMorte;
  @override
  GeneratedDateTimeColumn get dateMorte => _dateMorte ??= _constructDateMorte();
  GeneratedDateTimeColumn _constructDateMorte() {
    return GeneratedDateTimeColumn(
      'date_morte',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, nome, descricao, dateNascimento, dateMorte];
  @override
  $AutorsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'autors';
  @override
  final String actualTableName = 'autors';
  @override
  VerificationContext validateIntegrity(Insertable<Autor> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome'], _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('descricao')) {
      context.handle(_descricaoMeta,
          descricao.isAcceptableOrUnknown(data['descricao'], _descricaoMeta));
    } else if (isInserting) {
      context.missing(_descricaoMeta);
    }
    if (data.containsKey('date_nascimento')) {
      context.handle(
          _dateNascimentoMeta,
          dateNascimento.isAcceptableOrUnknown(
              data['date_nascimento'], _dateNascimentoMeta));
    }
    if (data.containsKey('date_morte')) {
      context.handle(_dateMorteMeta,
          dateMorte.isAcceptableOrUnknown(data['date_morte'], _dateMorteMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Autor map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Autor.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $AutorsTable createAlias(String alias) {
    return $AutorsTable(_db, alias);
  }
}

class Livro extends DataClass implements Insertable<Livro> {
  final int id;
  final int autorId;
  final String nome;
  final String descricao;
  final int ano;
  final double preco;
  final bool lido;
  Livro(
      {@required this.id,
      @required this.autorId,
      @required this.nome,
      @required this.descricao,
      @required this.ano,
      @required this.preco,
      @required this.lido});
  factory Livro.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Livro(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      autorId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}autor_id']),
      nome: stringType.mapFromDatabaseResponse(data['${effectivePrefix}nome']),
      descricao: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}descricao']),
      ano: intType.mapFromDatabaseResponse(data['${effectivePrefix}ano']),
      preco:
          doubleType.mapFromDatabaseResponse(data['${effectivePrefix}preco']),
      lido: boolType.mapFromDatabaseResponse(data['${effectivePrefix}lido']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || autorId != null) {
      map['autor_id'] = Variable<int>(autorId);
    }
    if (!nullToAbsent || nome != null) {
      map['nome'] = Variable<String>(nome);
    }
    if (!nullToAbsent || descricao != null) {
      map['descricao'] = Variable<String>(descricao);
    }
    if (!nullToAbsent || ano != null) {
      map['ano'] = Variable<int>(ano);
    }
    if (!nullToAbsent || preco != null) {
      map['preco'] = Variable<double>(preco);
    }
    if (!nullToAbsent || lido != null) {
      map['lido'] = Variable<bool>(lido);
    }
    return map;
  }

  LivrosCompanion toCompanion(bool nullToAbsent) {
    return LivrosCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      autorId: autorId == null && nullToAbsent
          ? const Value.absent()
          : Value(autorId),
      nome: nome == null && nullToAbsent ? const Value.absent() : Value(nome),
      descricao: descricao == null && nullToAbsent
          ? const Value.absent()
          : Value(descricao),
      ano: ano == null && nullToAbsent ? const Value.absent() : Value(ano),
      preco:
          preco == null && nullToAbsent ? const Value.absent() : Value(preco),
      lido: lido == null && nullToAbsent ? const Value.absent() : Value(lido),
    );
  }

  factory Livro.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Livro(
      id: serializer.fromJson<int>(json['id']),
      autorId: serializer.fromJson<int>(json['autorId']),
      nome: serializer.fromJson<String>(json['nome']),
      descricao: serializer.fromJson<String>(json['descricao']),
      ano: serializer.fromJson<int>(json['ano']),
      preco: serializer.fromJson<double>(json['preco']),
      lido: serializer.fromJson<bool>(json['lido']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'autorId': serializer.toJson<int>(autorId),
      'nome': serializer.toJson<String>(nome),
      'descricao': serializer.toJson<String>(descricao),
      'ano': serializer.toJson<int>(ano),
      'preco': serializer.toJson<double>(preco),
      'lido': serializer.toJson<bool>(lido),
    };
  }

  Livro copyWith(
          {int id,
          int autorId,
          String nome,
          String descricao,
          int ano,
          double preco,
          bool lido}) =>
      Livro(
        id: id ?? this.id,
        autorId: autorId ?? this.autorId,
        nome: nome ?? this.nome,
        descricao: descricao ?? this.descricao,
        ano: ano ?? this.ano,
        preco: preco ?? this.preco,
        lido: lido ?? this.lido,
      );
  @override
  String toString() {
    return (StringBuffer('Livro(')
          ..write('id: $id, ')
          ..write('autorId: $autorId, ')
          ..write('nome: $nome, ')
          ..write('descricao: $descricao, ')
          ..write('ano: $ano, ')
          ..write('preco: $preco, ')
          ..write('lido: $lido')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          autorId.hashCode,
          $mrjc(
              nome.hashCode,
              $mrjc(
                  descricao.hashCode,
                  $mrjc(
                      ano.hashCode, $mrjc(preco.hashCode, lido.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Livro &&
          other.id == this.id &&
          other.autorId == this.autorId &&
          other.nome == this.nome &&
          other.descricao == this.descricao &&
          other.ano == this.ano &&
          other.preco == this.preco &&
          other.lido == this.lido);
}

class LivrosCompanion extends UpdateCompanion<Livro> {
  final Value<int> id;
  final Value<int> autorId;
  final Value<String> nome;
  final Value<String> descricao;
  final Value<int> ano;
  final Value<double> preco;
  final Value<bool> lido;
  const LivrosCompanion({
    this.id = const Value.absent(),
    this.autorId = const Value.absent(),
    this.nome = const Value.absent(),
    this.descricao = const Value.absent(),
    this.ano = const Value.absent(),
    this.preco = const Value.absent(),
    this.lido = const Value.absent(),
  });
  LivrosCompanion.insert({
    this.id = const Value.absent(),
    @required int autorId,
    @required String nome,
    @required String descricao,
    @required int ano,
    @required double preco,
    @required bool lido,
  })  : autorId = Value(autorId),
        nome = Value(nome),
        descricao = Value(descricao),
        ano = Value(ano),
        preco = Value(preco),
        lido = Value(lido);
  static Insertable<Livro> custom({
    Expression<int> id,
    Expression<int> autorId,
    Expression<String> nome,
    Expression<String> descricao,
    Expression<int> ano,
    Expression<double> preco,
    Expression<bool> lido,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (autorId != null) 'autor_id': autorId,
      if (nome != null) 'nome': nome,
      if (descricao != null) 'descricao': descricao,
      if (ano != null) 'ano': ano,
      if (preco != null) 'preco': preco,
      if (lido != null) 'lido': lido,
    });
  }

  LivrosCompanion copyWith(
      {Value<int> id,
      Value<int> autorId,
      Value<String> nome,
      Value<String> descricao,
      Value<int> ano,
      Value<double> preco,
      Value<bool> lido}) {
    return LivrosCompanion(
      id: id ?? this.id,
      autorId: autorId ?? this.autorId,
      nome: nome ?? this.nome,
      descricao: descricao ?? this.descricao,
      ano: ano ?? this.ano,
      preco: preco ?? this.preco,
      lido: lido ?? this.lido,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (autorId.present) {
      map['autor_id'] = Variable<int>(autorId.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (descricao.present) {
      map['descricao'] = Variable<String>(descricao.value);
    }
    if (ano.present) {
      map['ano'] = Variable<int>(ano.value);
    }
    if (preco.present) {
      map['preco'] = Variable<double>(preco.value);
    }
    if (lido.present) {
      map['lido'] = Variable<bool>(lido.value);
    }
    return map;
  }
}

class $LivrosTable extends Livros with TableInfo<$LivrosTable, Livro> {
  final GeneratedDatabase _db;
  final String _alias;
  $LivrosTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _autorIdMeta = const VerificationMeta('autorId');
  GeneratedIntColumn _autorId;
  @override
  GeneratedIntColumn get autorId => _autorId ??= _constructAutorId();
  GeneratedIntColumn _constructAutorId() {
    return GeneratedIntColumn('autor_id', $tableName, false,
        $customConstraints: 'REFERENCES Autor(id)');
  }

  final VerificationMeta _nomeMeta = const VerificationMeta('nome');
  GeneratedTextColumn _nome;
  @override
  GeneratedTextColumn get nome => _nome ??= _constructNome();
  GeneratedTextColumn _constructNome() {
    return GeneratedTextColumn('nome', $tableName, false,
        minTextLength: 3, maxTextLength: 50);
  }

  final VerificationMeta _descricaoMeta = const VerificationMeta('descricao');
  GeneratedTextColumn _descricao;
  @override
  GeneratedTextColumn get descricao => _descricao ??= _constructDescricao();
  GeneratedTextColumn _constructDescricao() {
    return GeneratedTextColumn('descricao', $tableName, false,
        minTextLength: 0, maxTextLength: 100);
  }

  final VerificationMeta _anoMeta = const VerificationMeta('ano');
  GeneratedIntColumn _ano;
  @override
  GeneratedIntColumn get ano => _ano ??= _constructAno();
  GeneratedIntColumn _constructAno() {
    return GeneratedIntColumn(
      'ano',
      $tableName,
      false,
    );
  }

  final VerificationMeta _precoMeta = const VerificationMeta('preco');
  GeneratedRealColumn _preco;
  @override
  GeneratedRealColumn get preco => _preco ??= _constructPreco();
  GeneratedRealColumn _constructPreco() {
    return GeneratedRealColumn(
      'preco',
      $tableName,
      false,
    );
  }

  final VerificationMeta _lidoMeta = const VerificationMeta('lido');
  GeneratedBoolColumn _lido;
  @override
  GeneratedBoolColumn get lido => _lido ??= _constructLido();
  GeneratedBoolColumn _constructLido() {
    return GeneratedBoolColumn(
      'lido',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, autorId, nome, descricao, ano, preco, lido];
  @override
  $LivrosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'livros';
  @override
  final String actualTableName = 'livros';
  @override
  VerificationContext validateIntegrity(Insertable<Livro> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('autor_id')) {
      context.handle(_autorIdMeta,
          autorId.isAcceptableOrUnknown(data['autor_id'], _autorIdMeta));
    } else if (isInserting) {
      context.missing(_autorIdMeta);
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome'], _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('descricao')) {
      context.handle(_descricaoMeta,
          descricao.isAcceptableOrUnknown(data['descricao'], _descricaoMeta));
    } else if (isInserting) {
      context.missing(_descricaoMeta);
    }
    if (data.containsKey('ano')) {
      context.handle(
          _anoMeta, ano.isAcceptableOrUnknown(data['ano'], _anoMeta));
    } else if (isInserting) {
      context.missing(_anoMeta);
    }
    if (data.containsKey('preco')) {
      context.handle(
          _precoMeta, preco.isAcceptableOrUnknown(data['preco'], _precoMeta));
    } else if (isInserting) {
      context.missing(_precoMeta);
    }
    if (data.containsKey('lido')) {
      context.handle(
          _lidoMeta, lido.isAcceptableOrUnknown(data['lido'], _lidoMeta));
    } else if (isInserting) {
      context.missing(_lidoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Livro map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Livro.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $LivrosTable createAlias(String alias) {
    return $LivrosTable(_db, alias);
  }
}

class Emprestado extends DataClass implements Insertable<Emprestado> {
  final int id;
  final int autorId;
  final String nomeLivro;
  final String nomePessoa;
  Emprestado(
      {@required this.id,
      @required this.autorId,
      @required this.nomeLivro,
      @required this.nomePessoa});
  factory Emprestado.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Emprestado(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      autorId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}autor_id']),
      nomeLivro: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nome_livro']),
      nomePessoa: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nome_pessoa']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || autorId != null) {
      map['autor_id'] = Variable<int>(autorId);
    }
    if (!nullToAbsent || nomeLivro != null) {
      map['nome_livro'] = Variable<String>(nomeLivro);
    }
    if (!nullToAbsent || nomePessoa != null) {
      map['nome_pessoa'] = Variable<String>(nomePessoa);
    }
    return map;
  }

  EmprestadosCompanion toCompanion(bool nullToAbsent) {
    return EmprestadosCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      autorId: autorId == null && nullToAbsent
          ? const Value.absent()
          : Value(autorId),
      nomeLivro: nomeLivro == null && nullToAbsent
          ? const Value.absent()
          : Value(nomeLivro),
      nomePessoa: nomePessoa == null && nullToAbsent
          ? const Value.absent()
          : Value(nomePessoa),
    );
  }

  factory Emprestado.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Emprestado(
      id: serializer.fromJson<int>(json['id']),
      autorId: serializer.fromJson<int>(json['autorId']),
      nomeLivro: serializer.fromJson<String>(json['nomeLivro']),
      nomePessoa: serializer.fromJson<String>(json['nomePessoa']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'autorId': serializer.toJson<int>(autorId),
      'nomeLivro': serializer.toJson<String>(nomeLivro),
      'nomePessoa': serializer.toJson<String>(nomePessoa),
    };
  }

  Emprestado copyWith(
          {int id, int autorId, String nomeLivro, String nomePessoa}) =>
      Emprestado(
        id: id ?? this.id,
        autorId: autorId ?? this.autorId,
        nomeLivro: nomeLivro ?? this.nomeLivro,
        nomePessoa: nomePessoa ?? this.nomePessoa,
      );
  @override
  String toString() {
    return (StringBuffer('Emprestado(')
          ..write('id: $id, ')
          ..write('autorId: $autorId, ')
          ..write('nomeLivro: $nomeLivro, ')
          ..write('nomePessoa: $nomePessoa')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(autorId.hashCode, $mrjc(nomeLivro.hashCode, nomePessoa.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Emprestado &&
          other.id == this.id &&
          other.autorId == this.autorId &&
          other.nomeLivro == this.nomeLivro &&
          other.nomePessoa == this.nomePessoa);
}

class EmprestadosCompanion extends UpdateCompanion<Emprestado> {
  final Value<int> id;
  final Value<int> autorId;
  final Value<String> nomeLivro;
  final Value<String> nomePessoa;
  const EmprestadosCompanion({
    this.id = const Value.absent(),
    this.autorId = const Value.absent(),
    this.nomeLivro = const Value.absent(),
    this.nomePessoa = const Value.absent(),
  });
  EmprestadosCompanion.insert({
    this.id = const Value.absent(),
    @required int autorId,
    @required String nomeLivro,
    @required String nomePessoa,
  })  : autorId = Value(autorId),
        nomeLivro = Value(nomeLivro),
        nomePessoa = Value(nomePessoa);
  static Insertable<Emprestado> custom({
    Expression<int> id,
    Expression<int> autorId,
    Expression<String> nomeLivro,
    Expression<String> nomePessoa,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (autorId != null) 'autor_id': autorId,
      if (nomeLivro != null) 'nome_livro': nomeLivro,
      if (nomePessoa != null) 'nome_pessoa': nomePessoa,
    });
  }

  EmprestadosCompanion copyWith(
      {Value<int> id,
      Value<int> autorId,
      Value<String> nomeLivro,
      Value<String> nomePessoa}) {
    return EmprestadosCompanion(
      id: id ?? this.id,
      autorId: autorId ?? this.autorId,
      nomeLivro: nomeLivro ?? this.nomeLivro,
      nomePessoa: nomePessoa ?? this.nomePessoa,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (autorId.present) {
      map['autor_id'] = Variable<int>(autorId.value);
    }
    if (nomeLivro.present) {
      map['nome_livro'] = Variable<String>(nomeLivro.value);
    }
    if (nomePessoa.present) {
      map['nome_pessoa'] = Variable<String>(nomePessoa.value);
    }
    return map;
  }
}

class $EmprestadosTable extends Emprestados
    with TableInfo<$EmprestadosTable, Emprestado> {
  final GeneratedDatabase _db;
  final String _alias;
  $EmprestadosTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _autorIdMeta = const VerificationMeta('autorId');
  GeneratedIntColumn _autorId;
  @override
  GeneratedIntColumn get autorId => _autorId ??= _constructAutorId();
  GeneratedIntColumn _constructAutorId() {
    return GeneratedIntColumn('autor_id', $tableName, false,
        $customConstraints: 'REFERENCES Livro(id)');
  }

  final VerificationMeta _nomeLivroMeta = const VerificationMeta('nomeLivro');
  GeneratedTextColumn _nomeLivro;
  @override
  GeneratedTextColumn get nomeLivro => _nomeLivro ??= _constructNomeLivro();
  GeneratedTextColumn _constructNomeLivro() {
    return GeneratedTextColumn('nome_livro', $tableName, false,
        minTextLength: 3, maxTextLength: 50);
  }

  final VerificationMeta _nomePessoaMeta = const VerificationMeta('nomePessoa');
  GeneratedTextColumn _nomePessoa;
  @override
  GeneratedTextColumn get nomePessoa => _nomePessoa ??= _constructNomePessoa();
  GeneratedTextColumn _constructNomePessoa() {
    return GeneratedTextColumn('nome_pessoa', $tableName, false,
        minTextLength: 3, maxTextLength: 50);
  }

  @override
  List<GeneratedColumn> get $columns => [id, autorId, nomeLivro, nomePessoa];
  @override
  $EmprestadosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'emprestados';
  @override
  final String actualTableName = 'emprestados';
  @override
  VerificationContext validateIntegrity(Insertable<Emprestado> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('autor_id')) {
      context.handle(_autorIdMeta,
          autorId.isAcceptableOrUnknown(data['autor_id'], _autorIdMeta));
    } else if (isInserting) {
      context.missing(_autorIdMeta);
    }
    if (data.containsKey('nome_livro')) {
      context.handle(_nomeLivroMeta,
          nomeLivro.isAcceptableOrUnknown(data['nome_livro'], _nomeLivroMeta));
    } else if (isInserting) {
      context.missing(_nomeLivroMeta);
    }
    if (data.containsKey('nome_pessoa')) {
      context.handle(
          _nomePessoaMeta,
          nomePessoa.isAcceptableOrUnknown(
              data['nome_pessoa'], _nomePessoaMeta));
    } else if (isInserting) {
      context.missing(_nomePessoaMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Emprestado map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Emprestado.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $EmprestadosTable createAlias(String alias) {
    return $EmprestadosTable(_db, alias);
  }
}

class Usuario extends DataClass implements Insertable<Usuario> {
  final int id;
  final String login;
  final String senha;
  Usuario({@required this.id, @required this.login, @required this.senha});
  factory Usuario.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Usuario(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      login:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}login']),
      senha:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}senha']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || login != null) {
      map['login'] = Variable<String>(login);
    }
    if (!nullToAbsent || senha != null) {
      map['senha'] = Variable<String>(senha);
    }
    return map;
  }

  UsuariosCompanion toCompanion(bool nullToAbsent) {
    return UsuariosCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      login:
          login == null && nullToAbsent ? const Value.absent() : Value(login),
      senha:
          senha == null && nullToAbsent ? const Value.absent() : Value(senha),
    );
  }

  factory Usuario.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Usuario(
      id: serializer.fromJson<int>(json['id']),
      login: serializer.fromJson<String>(json['login']),
      senha: serializer.fromJson<String>(json['senha']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'login': serializer.toJson<String>(login),
      'senha': serializer.toJson<String>(senha),
    };
  }

  Usuario copyWith({int id, String login, String senha}) => Usuario(
        id: id ?? this.id,
        login: login ?? this.login,
        senha: senha ?? this.senha,
      );
  @override
  String toString() {
    return (StringBuffer('Usuario(')
          ..write('id: $id, ')
          ..write('login: $login, ')
          ..write('senha: $senha')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(login.hashCode, senha.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Usuario &&
          other.id == this.id &&
          other.login == this.login &&
          other.senha == this.senha);
}

class UsuariosCompanion extends UpdateCompanion<Usuario> {
  final Value<int> id;
  final Value<String> login;
  final Value<String> senha;
  const UsuariosCompanion({
    this.id = const Value.absent(),
    this.login = const Value.absent(),
    this.senha = const Value.absent(),
  });
  UsuariosCompanion.insert({
    this.id = const Value.absent(),
    @required String login,
    @required String senha,
  })  : login = Value(login),
        senha = Value(senha);
  static Insertable<Usuario> custom({
    Expression<int> id,
    Expression<String> login,
    Expression<String> senha,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (login != null) 'login': login,
      if (senha != null) 'senha': senha,
    });
  }

  UsuariosCompanion copyWith(
      {Value<int> id, Value<String> login, Value<String> senha}) {
    return UsuariosCompanion(
      id: id ?? this.id,
      login: login ?? this.login,
      senha: senha ?? this.senha,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (login.present) {
      map['login'] = Variable<String>(login.value);
    }
    if (senha.present) {
      map['senha'] = Variable<String>(senha.value);
    }
    return map;
  }
}

class $UsuariosTable extends Usuarios with TableInfo<$UsuariosTable, Usuario> {
  final GeneratedDatabase _db;
  final String _alias;
  $UsuariosTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _loginMeta = const VerificationMeta('login');
  GeneratedTextColumn _login;
  @override
  GeneratedTextColumn get login => _login ??= _constructLogin();
  GeneratedTextColumn _constructLogin() {
    return GeneratedTextColumn('login', $tableName, false,
        minTextLength: 3, maxTextLength: 15);
  }

  final VerificationMeta _senhaMeta = const VerificationMeta('senha');
  GeneratedTextColumn _senha;
  @override
  GeneratedTextColumn get senha => _senha ??= _constructSenha();
  GeneratedTextColumn _constructSenha() {
    return GeneratedTextColumn('senha', $tableName, false,
        minTextLength: 3, maxTextLength: 10);
  }

  @override
  List<GeneratedColumn> get $columns => [id, login, senha];
  @override
  $UsuariosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'usuarios';
  @override
  final String actualTableName = 'usuarios';
  @override
  VerificationContext validateIntegrity(Insertable<Usuario> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('login')) {
      context.handle(
          _loginMeta, login.isAcceptableOrUnknown(data['login'], _loginMeta));
    } else if (isInserting) {
      context.missing(_loginMeta);
    }
    if (data.containsKey('senha')) {
      context.handle(
          _senhaMeta, senha.isAcceptableOrUnknown(data['senha'], _senhaMeta));
    } else if (isInserting) {
      context.missing(_senhaMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Usuario map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Usuario.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UsuariosTable createAlias(String alias) {
    return $UsuariosTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $AutorsTable _autors;
  $AutorsTable get autors => _autors ??= $AutorsTable(this);
  $LivrosTable _livros;
  $LivrosTable get livros => _livros ??= $LivrosTable(this);
  $EmprestadosTable _emprestados;
  $EmprestadosTable get emprestados => _emprestados ??= $EmprestadosTable(this);
  $UsuariosTable _usuarios;
  $UsuariosTable get usuarios => _usuarios ??= $UsuariosTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [autors, livros, emprestados, usuarios];
}
