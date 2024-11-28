// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $PokemonsTable extends Pokemons with TableInfo<$PokemonsTable, Pokemon> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PokemonsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _pokemonIdMeta =
      const VerificationMeta('pokemonId');
  @override
  late final GeneratedColumn<int> pokemonId = GeneratedColumn<int>(
      'pokemon_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<int> height = GeneratedColumn<int>(
      'height', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _weightMeta = const VerificationMeta('weight');
  @override
  late final GeneratedColumn<int> weight = GeneratedColumn<int>(
      'weight', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _frontDefaultMeta =
      const VerificationMeta('frontDefault');
  @override
  late final GeneratedColumn<String> frontDefault = GeneratedColumn<String>(
      'front_default', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _frontShinyMeta =
      const VerificationMeta('frontShiny');
  @override
  late final GeneratedColumn<String> frontShiny = GeneratedColumn<String>(
      'front_shiny', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _backDefaultMeta =
      const VerificationMeta('backDefault');
  @override
  late final GeneratedColumn<String> backDefault = GeneratedColumn<String>(
      'back_default', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _backShinyMeta =
      const VerificationMeta('backShiny');
  @override
  late final GeneratedColumn<String> backShiny = GeneratedColumn<String>(
      'back_shiny', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _latestCryMeta =
      const VerificationMeta('latestCry');
  @override
  late final GeneratedColumn<String> latestCry = GeneratedColumn<String>(
      'latest_cry', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _legacyCryMeta =
      const VerificationMeta('legacyCry');
  @override
  late final GeneratedColumn<String> legacyCry = GeneratedColumn<String>(
      'legacy_cry', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _type1Meta = const VerificationMeta('type1');
  @override
  late final GeneratedColumn<String> type1 = GeneratedColumn<String>(
      'type1', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _type2Meta = const VerificationMeta('type2');
  @override
  late final GeneratedColumn<String> type2 = GeneratedColumn<String>(
      'type2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        pokemonId,
        name,
        height,
        weight,
        frontDefault,
        frontShiny,
        backDefault,
        backShiny,
        latestCry,
        legacyCry,
        type1,
        type2
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemons';
  @override
  VerificationContext validateIntegrity(Insertable<Pokemon> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('pokemon_id')) {
      context.handle(_pokemonIdMeta,
          pokemonId.isAcceptableOrUnknown(data['pokemon_id']!, _pokemonIdMeta));
    } else if (isInserting) {
      context.missing(_pokemonIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('height')) {
      context.handle(_heightMeta,
          height.isAcceptableOrUnknown(data['height']!, _heightMeta));
    }
    if (data.containsKey('weight')) {
      context.handle(_weightMeta,
          weight.isAcceptableOrUnknown(data['weight']!, _weightMeta));
    }
    if (data.containsKey('front_default')) {
      context.handle(
          _frontDefaultMeta,
          frontDefault.isAcceptableOrUnknown(
              data['front_default']!, _frontDefaultMeta));
    }
    if (data.containsKey('front_shiny')) {
      context.handle(
          _frontShinyMeta,
          frontShiny.isAcceptableOrUnknown(
              data['front_shiny']!, _frontShinyMeta));
    }
    if (data.containsKey('back_default')) {
      context.handle(
          _backDefaultMeta,
          backDefault.isAcceptableOrUnknown(
              data['back_default']!, _backDefaultMeta));
    }
    if (data.containsKey('back_shiny')) {
      context.handle(_backShinyMeta,
          backShiny.isAcceptableOrUnknown(data['back_shiny']!, _backShinyMeta));
    }
    if (data.containsKey('latest_cry')) {
      context.handle(_latestCryMeta,
          latestCry.isAcceptableOrUnknown(data['latest_cry']!, _latestCryMeta));
    }
    if (data.containsKey('legacy_cry')) {
      context.handle(_legacyCryMeta,
          legacyCry.isAcceptableOrUnknown(data['legacy_cry']!, _legacyCryMeta));
    }
    if (data.containsKey('type1')) {
      context.handle(
          _type1Meta, type1.isAcceptableOrUnknown(data['type1']!, _type1Meta));
    } else if (isInserting) {
      context.missing(_type1Meta);
    }
    if (data.containsKey('type2')) {
      context.handle(
          _type2Meta, type2.isAcceptableOrUnknown(data['type2']!, _type2Meta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Pokemon map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Pokemon(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      pokemonId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pokemon_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      height: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}height']),
      weight: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}weight']),
      frontDefault: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}front_default']),
      frontShiny: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}front_shiny']),
      backDefault: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}back_default']),
      backShiny: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}back_shiny']),
      latestCry: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}latest_cry']),
      legacyCry: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}legacy_cry']),
      type1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type1'])!,
      type2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type2']),
    );
  }

  @override
  $PokemonsTable createAlias(String alias) {
    return $PokemonsTable(attachedDatabase, alias);
  }
}

class Pokemon extends DataClass implements Insertable<Pokemon> {
  final int id;
  final int pokemonId;
  final String name;
  final int? height;
  final int? weight;
  final String? frontDefault;
  final String? frontShiny;
  final String? backDefault;
  final String? backShiny;
  final String? latestCry;
  final String? legacyCry;
  final String type1;
  final String? type2;
  const Pokemon(
      {required this.id,
      required this.pokemonId,
      required this.name,
      this.height,
      this.weight,
      this.frontDefault,
      this.frontShiny,
      this.backDefault,
      this.backShiny,
      this.latestCry,
      this.legacyCry,
      required this.type1,
      this.type2});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['pokemon_id'] = Variable<int>(pokemonId);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || height != null) {
      map['height'] = Variable<int>(height);
    }
    if (!nullToAbsent || weight != null) {
      map['weight'] = Variable<int>(weight);
    }
    if (!nullToAbsent || frontDefault != null) {
      map['front_default'] = Variable<String>(frontDefault);
    }
    if (!nullToAbsent || frontShiny != null) {
      map['front_shiny'] = Variable<String>(frontShiny);
    }
    if (!nullToAbsent || backDefault != null) {
      map['back_default'] = Variable<String>(backDefault);
    }
    if (!nullToAbsent || backShiny != null) {
      map['back_shiny'] = Variable<String>(backShiny);
    }
    if (!nullToAbsent || latestCry != null) {
      map['latest_cry'] = Variable<String>(latestCry);
    }
    if (!nullToAbsent || legacyCry != null) {
      map['legacy_cry'] = Variable<String>(legacyCry);
    }
    map['type1'] = Variable<String>(type1);
    if (!nullToAbsent || type2 != null) {
      map['type2'] = Variable<String>(type2);
    }
    return map;
  }

  PokemonsCompanion toCompanion(bool nullToAbsent) {
    return PokemonsCompanion(
      id: Value(id),
      pokemonId: Value(pokemonId),
      name: Value(name),
      height:
          height == null && nullToAbsent ? const Value.absent() : Value(height),
      weight:
          weight == null && nullToAbsent ? const Value.absent() : Value(weight),
      frontDefault: frontDefault == null && nullToAbsent
          ? const Value.absent()
          : Value(frontDefault),
      frontShiny: frontShiny == null && nullToAbsent
          ? const Value.absent()
          : Value(frontShiny),
      backDefault: backDefault == null && nullToAbsent
          ? const Value.absent()
          : Value(backDefault),
      backShiny: backShiny == null && nullToAbsent
          ? const Value.absent()
          : Value(backShiny),
      latestCry: latestCry == null && nullToAbsent
          ? const Value.absent()
          : Value(latestCry),
      legacyCry: legacyCry == null && nullToAbsent
          ? const Value.absent()
          : Value(legacyCry),
      type1: Value(type1),
      type2:
          type2 == null && nullToAbsent ? const Value.absent() : Value(type2),
    );
  }

  factory Pokemon.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Pokemon(
      id: serializer.fromJson<int>(json['id']),
      pokemonId: serializer.fromJson<int>(json['pokemonId']),
      name: serializer.fromJson<String>(json['name']),
      height: serializer.fromJson<int?>(json['height']),
      weight: serializer.fromJson<int?>(json['weight']),
      frontDefault: serializer.fromJson<String?>(json['frontDefault']),
      frontShiny: serializer.fromJson<String?>(json['frontShiny']),
      backDefault: serializer.fromJson<String?>(json['backDefault']),
      backShiny: serializer.fromJson<String?>(json['backShiny']),
      latestCry: serializer.fromJson<String?>(json['latestCry']),
      legacyCry: serializer.fromJson<String?>(json['legacyCry']),
      type1: serializer.fromJson<String>(json['type1']),
      type2: serializer.fromJson<String?>(json['type2']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'pokemonId': serializer.toJson<int>(pokemonId),
      'name': serializer.toJson<String>(name),
      'height': serializer.toJson<int?>(height),
      'weight': serializer.toJson<int?>(weight),
      'frontDefault': serializer.toJson<String?>(frontDefault),
      'frontShiny': serializer.toJson<String?>(frontShiny),
      'backDefault': serializer.toJson<String?>(backDefault),
      'backShiny': serializer.toJson<String?>(backShiny),
      'latestCry': serializer.toJson<String?>(latestCry),
      'legacyCry': serializer.toJson<String?>(legacyCry),
      'type1': serializer.toJson<String>(type1),
      'type2': serializer.toJson<String?>(type2),
    };
  }

  Pokemon copyWith(
          {int? id,
          int? pokemonId,
          String? name,
          Value<int?> height = const Value.absent(),
          Value<int?> weight = const Value.absent(),
          Value<String?> frontDefault = const Value.absent(),
          Value<String?> frontShiny = const Value.absent(),
          Value<String?> backDefault = const Value.absent(),
          Value<String?> backShiny = const Value.absent(),
          Value<String?> latestCry = const Value.absent(),
          Value<String?> legacyCry = const Value.absent(),
          String? type1,
          Value<String?> type2 = const Value.absent()}) =>
      Pokemon(
        id: id ?? this.id,
        pokemonId: pokemonId ?? this.pokemonId,
        name: name ?? this.name,
        height: height.present ? height.value : this.height,
        weight: weight.present ? weight.value : this.weight,
        frontDefault:
            frontDefault.present ? frontDefault.value : this.frontDefault,
        frontShiny: frontShiny.present ? frontShiny.value : this.frontShiny,
        backDefault: backDefault.present ? backDefault.value : this.backDefault,
        backShiny: backShiny.present ? backShiny.value : this.backShiny,
        latestCry: latestCry.present ? latestCry.value : this.latestCry,
        legacyCry: legacyCry.present ? legacyCry.value : this.legacyCry,
        type1: type1 ?? this.type1,
        type2: type2.present ? type2.value : this.type2,
      );
  Pokemon copyWithCompanion(PokemonsCompanion data) {
    return Pokemon(
      id: data.id.present ? data.id.value : this.id,
      pokemonId: data.pokemonId.present ? data.pokemonId.value : this.pokemonId,
      name: data.name.present ? data.name.value : this.name,
      height: data.height.present ? data.height.value : this.height,
      weight: data.weight.present ? data.weight.value : this.weight,
      frontDefault: data.frontDefault.present
          ? data.frontDefault.value
          : this.frontDefault,
      frontShiny:
          data.frontShiny.present ? data.frontShiny.value : this.frontShiny,
      backDefault:
          data.backDefault.present ? data.backDefault.value : this.backDefault,
      backShiny: data.backShiny.present ? data.backShiny.value : this.backShiny,
      latestCry: data.latestCry.present ? data.latestCry.value : this.latestCry,
      legacyCry: data.legacyCry.present ? data.legacyCry.value : this.legacyCry,
      type1: data.type1.present ? data.type1.value : this.type1,
      type2: data.type2.present ? data.type2.value : this.type2,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Pokemon(')
          ..write('id: $id, ')
          ..write('pokemonId: $pokemonId, ')
          ..write('name: $name, ')
          ..write('height: $height, ')
          ..write('weight: $weight, ')
          ..write('frontDefault: $frontDefault, ')
          ..write('frontShiny: $frontShiny, ')
          ..write('backDefault: $backDefault, ')
          ..write('backShiny: $backShiny, ')
          ..write('latestCry: $latestCry, ')
          ..write('legacyCry: $legacyCry, ')
          ..write('type1: $type1, ')
          ..write('type2: $type2')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      pokemonId,
      name,
      height,
      weight,
      frontDefault,
      frontShiny,
      backDefault,
      backShiny,
      latestCry,
      legacyCry,
      type1,
      type2);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Pokemon &&
          other.id == this.id &&
          other.pokemonId == this.pokemonId &&
          other.name == this.name &&
          other.height == this.height &&
          other.weight == this.weight &&
          other.frontDefault == this.frontDefault &&
          other.frontShiny == this.frontShiny &&
          other.backDefault == this.backDefault &&
          other.backShiny == this.backShiny &&
          other.latestCry == this.latestCry &&
          other.legacyCry == this.legacyCry &&
          other.type1 == this.type1 &&
          other.type2 == this.type2);
}

class PokemonsCompanion extends UpdateCompanion<Pokemon> {
  final Value<int> id;
  final Value<int> pokemonId;
  final Value<String> name;
  final Value<int?> height;
  final Value<int?> weight;
  final Value<String?> frontDefault;
  final Value<String?> frontShiny;
  final Value<String?> backDefault;
  final Value<String?> backShiny;
  final Value<String?> latestCry;
  final Value<String?> legacyCry;
  final Value<String> type1;
  final Value<String?> type2;
  const PokemonsCompanion({
    this.id = const Value.absent(),
    this.pokemonId = const Value.absent(),
    this.name = const Value.absent(),
    this.height = const Value.absent(),
    this.weight = const Value.absent(),
    this.frontDefault = const Value.absent(),
    this.frontShiny = const Value.absent(),
    this.backDefault = const Value.absent(),
    this.backShiny = const Value.absent(),
    this.latestCry = const Value.absent(),
    this.legacyCry = const Value.absent(),
    this.type1 = const Value.absent(),
    this.type2 = const Value.absent(),
  });
  PokemonsCompanion.insert({
    this.id = const Value.absent(),
    required int pokemonId,
    required String name,
    this.height = const Value.absent(),
    this.weight = const Value.absent(),
    this.frontDefault = const Value.absent(),
    this.frontShiny = const Value.absent(),
    this.backDefault = const Value.absent(),
    this.backShiny = const Value.absent(),
    this.latestCry = const Value.absent(),
    this.legacyCry = const Value.absent(),
    required String type1,
    this.type2 = const Value.absent(),
  })  : pokemonId = Value(pokemonId),
        name = Value(name),
        type1 = Value(type1);
  static Insertable<Pokemon> custom({
    Expression<int>? id,
    Expression<int>? pokemonId,
    Expression<String>? name,
    Expression<int>? height,
    Expression<int>? weight,
    Expression<String>? frontDefault,
    Expression<String>? frontShiny,
    Expression<String>? backDefault,
    Expression<String>? backShiny,
    Expression<String>? latestCry,
    Expression<String>? legacyCry,
    Expression<String>? type1,
    Expression<String>? type2,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (name != null) 'name': name,
      if (height != null) 'height': height,
      if (weight != null) 'weight': weight,
      if (frontDefault != null) 'front_default': frontDefault,
      if (frontShiny != null) 'front_shiny': frontShiny,
      if (backDefault != null) 'back_default': backDefault,
      if (backShiny != null) 'back_shiny': backShiny,
      if (latestCry != null) 'latest_cry': latestCry,
      if (legacyCry != null) 'legacy_cry': legacyCry,
      if (type1 != null) 'type1': type1,
      if (type2 != null) 'type2': type2,
    });
  }

  PokemonsCompanion copyWith(
      {Value<int>? id,
      Value<int>? pokemonId,
      Value<String>? name,
      Value<int?>? height,
      Value<int?>? weight,
      Value<String?>? frontDefault,
      Value<String?>? frontShiny,
      Value<String?>? backDefault,
      Value<String?>? backShiny,
      Value<String?>? latestCry,
      Value<String?>? legacyCry,
      Value<String>? type1,
      Value<String?>? type2}) {
    return PokemonsCompanion(
      id: id ?? this.id,
      pokemonId: pokemonId ?? this.pokemonId,
      name: name ?? this.name,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      frontDefault: frontDefault ?? this.frontDefault,
      frontShiny: frontShiny ?? this.frontShiny,
      backDefault: backDefault ?? this.backDefault,
      backShiny: backShiny ?? this.backShiny,
      latestCry: latestCry ?? this.latestCry,
      legacyCry: legacyCry ?? this.legacyCry,
      type1: type1 ?? this.type1,
      type2: type2 ?? this.type2,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (pokemonId.present) {
      map['pokemon_id'] = Variable<int>(pokemonId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (height.present) {
      map['height'] = Variable<int>(height.value);
    }
    if (weight.present) {
      map['weight'] = Variable<int>(weight.value);
    }
    if (frontDefault.present) {
      map['front_default'] = Variable<String>(frontDefault.value);
    }
    if (frontShiny.present) {
      map['front_shiny'] = Variable<String>(frontShiny.value);
    }
    if (backDefault.present) {
      map['back_default'] = Variable<String>(backDefault.value);
    }
    if (backShiny.present) {
      map['back_shiny'] = Variable<String>(backShiny.value);
    }
    if (latestCry.present) {
      map['latest_cry'] = Variable<String>(latestCry.value);
    }
    if (legacyCry.present) {
      map['legacy_cry'] = Variable<String>(legacyCry.value);
    }
    if (type1.present) {
      map['type1'] = Variable<String>(type1.value);
    }
    if (type2.present) {
      map['type2'] = Variable<String>(type2.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonsCompanion(')
          ..write('id: $id, ')
          ..write('pokemonId: $pokemonId, ')
          ..write('name: $name, ')
          ..write('height: $height, ')
          ..write('weight: $weight, ')
          ..write('frontDefault: $frontDefault, ')
          ..write('frontShiny: $frontShiny, ')
          ..write('backDefault: $backDefault, ')
          ..write('backShiny: $backShiny, ')
          ..write('latestCry: $latestCry, ')
          ..write('legacyCry: $legacyCry, ')
          ..write('type1: $type1, ')
          ..write('type2: $type2')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $PokemonsTable pokemons = $PokemonsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [pokemons];
}

typedef $$PokemonsTableCreateCompanionBuilder = PokemonsCompanion Function({
  Value<int> id,
  required int pokemonId,
  required String name,
  Value<int?> height,
  Value<int?> weight,
  Value<String?> frontDefault,
  Value<String?> frontShiny,
  Value<String?> backDefault,
  Value<String?> backShiny,
  Value<String?> latestCry,
  Value<String?> legacyCry,
  required String type1,
  Value<String?> type2,
});
typedef $$PokemonsTableUpdateCompanionBuilder = PokemonsCompanion Function({
  Value<int> id,
  Value<int> pokemonId,
  Value<String> name,
  Value<int?> height,
  Value<int?> weight,
  Value<String?> frontDefault,
  Value<String?> frontShiny,
  Value<String?> backDefault,
  Value<String?> backShiny,
  Value<String?> latestCry,
  Value<String?> legacyCry,
  Value<String> type1,
  Value<String?> type2,
});

class $$PokemonsTableFilterComposer
    extends Composer<_$AppDatabase, $PokemonsTable> {
  $$PokemonsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get pokemonId => $composableBuilder(
      column: $table.pokemonId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get weight => $composableBuilder(
      column: $table.weight, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get frontDefault => $composableBuilder(
      column: $table.frontDefault, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get frontShiny => $composableBuilder(
      column: $table.frontShiny, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get backDefault => $composableBuilder(
      column: $table.backDefault, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get backShiny => $composableBuilder(
      column: $table.backShiny, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get latestCry => $composableBuilder(
      column: $table.latestCry, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get legacyCry => $composableBuilder(
      column: $table.legacyCry, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type1 => $composableBuilder(
      column: $table.type1, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type2 => $composableBuilder(
      column: $table.type2, builder: (column) => ColumnFilters(column));
}

class $$PokemonsTableOrderingComposer
    extends Composer<_$AppDatabase, $PokemonsTable> {
  $$PokemonsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get pokemonId => $composableBuilder(
      column: $table.pokemonId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get weight => $composableBuilder(
      column: $table.weight, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get frontDefault => $composableBuilder(
      column: $table.frontDefault,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get frontShiny => $composableBuilder(
      column: $table.frontShiny, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get backDefault => $composableBuilder(
      column: $table.backDefault, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get backShiny => $composableBuilder(
      column: $table.backShiny, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get latestCry => $composableBuilder(
      column: $table.latestCry, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get legacyCry => $composableBuilder(
      column: $table.legacyCry, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type1 => $composableBuilder(
      column: $table.type1, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type2 => $composableBuilder(
      column: $table.type2, builder: (column) => ColumnOrderings(column));
}

class $$PokemonsTableAnnotationComposer
    extends Composer<_$AppDatabase, $PokemonsTable> {
  $$PokemonsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get pokemonId =>
      $composableBuilder(column: $table.pokemonId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get height =>
      $composableBuilder(column: $table.height, builder: (column) => column);

  GeneratedColumn<int> get weight =>
      $composableBuilder(column: $table.weight, builder: (column) => column);

  GeneratedColumn<String> get frontDefault => $composableBuilder(
      column: $table.frontDefault, builder: (column) => column);

  GeneratedColumn<String> get frontShiny => $composableBuilder(
      column: $table.frontShiny, builder: (column) => column);

  GeneratedColumn<String> get backDefault => $composableBuilder(
      column: $table.backDefault, builder: (column) => column);

  GeneratedColumn<String> get backShiny =>
      $composableBuilder(column: $table.backShiny, builder: (column) => column);

  GeneratedColumn<String> get latestCry =>
      $composableBuilder(column: $table.latestCry, builder: (column) => column);

  GeneratedColumn<String> get legacyCry =>
      $composableBuilder(column: $table.legacyCry, builder: (column) => column);

  GeneratedColumn<String> get type1 =>
      $composableBuilder(column: $table.type1, builder: (column) => column);

  GeneratedColumn<String> get type2 =>
      $composableBuilder(column: $table.type2, builder: (column) => column);
}

class $$PokemonsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PokemonsTable,
    Pokemon,
    $$PokemonsTableFilterComposer,
    $$PokemonsTableOrderingComposer,
    $$PokemonsTableAnnotationComposer,
    $$PokemonsTableCreateCompanionBuilder,
    $$PokemonsTableUpdateCompanionBuilder,
    (Pokemon, BaseReferences<_$AppDatabase, $PokemonsTable, Pokemon>),
    Pokemon,
    PrefetchHooks Function()> {
  $$PokemonsTableTableManager(_$AppDatabase db, $PokemonsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PokemonsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PokemonsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PokemonsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> pokemonId = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int?> height = const Value.absent(),
            Value<int?> weight = const Value.absent(),
            Value<String?> frontDefault = const Value.absent(),
            Value<String?> frontShiny = const Value.absent(),
            Value<String?> backDefault = const Value.absent(),
            Value<String?> backShiny = const Value.absent(),
            Value<String?> latestCry = const Value.absent(),
            Value<String?> legacyCry = const Value.absent(),
            Value<String> type1 = const Value.absent(),
            Value<String?> type2 = const Value.absent(),
          }) =>
              PokemonsCompanion(
            id: id,
            pokemonId: pokemonId,
            name: name,
            height: height,
            weight: weight,
            frontDefault: frontDefault,
            frontShiny: frontShiny,
            backDefault: backDefault,
            backShiny: backShiny,
            latestCry: latestCry,
            legacyCry: legacyCry,
            type1: type1,
            type2: type2,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int pokemonId,
            required String name,
            Value<int?> height = const Value.absent(),
            Value<int?> weight = const Value.absent(),
            Value<String?> frontDefault = const Value.absent(),
            Value<String?> frontShiny = const Value.absent(),
            Value<String?> backDefault = const Value.absent(),
            Value<String?> backShiny = const Value.absent(),
            Value<String?> latestCry = const Value.absent(),
            Value<String?> legacyCry = const Value.absent(),
            required String type1,
            Value<String?> type2 = const Value.absent(),
          }) =>
              PokemonsCompanion.insert(
            id: id,
            pokemonId: pokemonId,
            name: name,
            height: height,
            weight: weight,
            frontDefault: frontDefault,
            frontShiny: frontShiny,
            backDefault: backDefault,
            backShiny: backShiny,
            latestCry: latestCry,
            legacyCry: legacyCry,
            type1: type1,
            type2: type2,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PokemonsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PokemonsTable,
    Pokemon,
    $$PokemonsTableFilterComposer,
    $$PokemonsTableOrderingComposer,
    $$PokemonsTableAnnotationComposer,
    $$PokemonsTableCreateCompanionBuilder,
    $$PokemonsTableUpdateCompanionBuilder,
    (Pokemon, BaseReferences<_$AppDatabase, $PokemonsTable, Pokemon>),
    Pokemon,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$PokemonsTableTableManager get pokemons =>
      $$PokemonsTableTableManager(_db, _db.pokemons);
}
