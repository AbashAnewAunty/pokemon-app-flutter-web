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
  @override
  List<GeneratedColumn> get $columns => [id, pokemonId, name, height, weight];
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
  const Pokemon(
      {required this.id,
      required this.pokemonId,
      required this.name,
      this.height,
      this.weight});
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
    };
  }

  Pokemon copyWith(
          {int? id,
          int? pokemonId,
          String? name,
          Value<int?> height = const Value.absent(),
          Value<int?> weight = const Value.absent()}) =>
      Pokemon(
        id: id ?? this.id,
        pokemonId: pokemonId ?? this.pokemonId,
        name: name ?? this.name,
        height: height.present ? height.value : this.height,
        weight: weight.present ? weight.value : this.weight,
      );
  Pokemon copyWithCompanion(PokemonsCompanion data) {
    return Pokemon(
      id: data.id.present ? data.id.value : this.id,
      pokemonId: data.pokemonId.present ? data.pokemonId.value : this.pokemonId,
      name: data.name.present ? data.name.value : this.name,
      height: data.height.present ? data.height.value : this.height,
      weight: data.weight.present ? data.weight.value : this.weight,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Pokemon(')
          ..write('id: $id, ')
          ..write('pokemonId: $pokemonId, ')
          ..write('name: $name, ')
          ..write('height: $height, ')
          ..write('weight: $weight')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, pokemonId, name, height, weight);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Pokemon &&
          other.id == this.id &&
          other.pokemonId == this.pokemonId &&
          other.name == this.name &&
          other.height == this.height &&
          other.weight == this.weight);
}

class PokemonsCompanion extends UpdateCompanion<Pokemon> {
  final Value<int> id;
  final Value<int> pokemonId;
  final Value<String> name;
  final Value<int?> height;
  final Value<int?> weight;
  const PokemonsCompanion({
    this.id = const Value.absent(),
    this.pokemonId = const Value.absent(),
    this.name = const Value.absent(),
    this.height = const Value.absent(),
    this.weight = const Value.absent(),
  });
  PokemonsCompanion.insert({
    this.id = const Value.absent(),
    required int pokemonId,
    required String name,
    this.height = const Value.absent(),
    this.weight = const Value.absent(),
  })  : pokemonId = Value(pokemonId),
        name = Value(name);
  static Insertable<Pokemon> custom({
    Expression<int>? id,
    Expression<int>? pokemonId,
    Expression<String>? name,
    Expression<int>? height,
    Expression<int>? weight,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (name != null) 'name': name,
      if (height != null) 'height': height,
      if (weight != null) 'weight': weight,
    });
  }

  PokemonsCompanion copyWith(
      {Value<int>? id,
      Value<int>? pokemonId,
      Value<String>? name,
      Value<int?>? height,
      Value<int?>? weight}) {
    return PokemonsCompanion(
      id: id ?? this.id,
      pokemonId: pokemonId ?? this.pokemonId,
      name: name ?? this.name,
      height: height ?? this.height,
      weight: weight ?? this.weight,
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
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonsCompanion(')
          ..write('id: $id, ')
          ..write('pokemonId: $pokemonId, ')
          ..write('name: $name, ')
          ..write('height: $height, ')
          ..write('weight: $weight')
          ..write(')'))
        .toString();
  }
}

class $PokemonSpritesTable extends PokemonSprites
    with TableInfo<$PokemonSpritesTable, PokemonSprite> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PokemonSpritesTable(this.attachedDatabase, [this._alias]);
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
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES pokemons (pokemon_id)'));
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
  @override
  List<GeneratedColumn> get $columns =>
      [id, pokemonId, frontDefault, frontShiny, backDefault, backShiny];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemon_sprites';
  @override
  VerificationContext validateIntegrity(Insertable<PokemonSprite> instance,
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
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PokemonSprite map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PokemonSprite(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      pokemonId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pokemon_id'])!,
      frontDefault: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}front_default']),
      frontShiny: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}front_shiny']),
      backDefault: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}back_default']),
      backShiny: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}back_shiny']),
    );
  }

  @override
  $PokemonSpritesTable createAlias(String alias) {
    return $PokemonSpritesTable(attachedDatabase, alias);
  }
}

class PokemonSprite extends DataClass implements Insertable<PokemonSprite> {
  final int id;
  final int pokemonId;
  final String? frontDefault;
  final String? frontShiny;
  final String? backDefault;
  final String? backShiny;
  const PokemonSprite(
      {required this.id,
      required this.pokemonId,
      this.frontDefault,
      this.frontShiny,
      this.backDefault,
      this.backShiny});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['pokemon_id'] = Variable<int>(pokemonId);
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
    return map;
  }

  PokemonSpritesCompanion toCompanion(bool nullToAbsent) {
    return PokemonSpritesCompanion(
      id: Value(id),
      pokemonId: Value(pokemonId),
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
    );
  }

  factory PokemonSprite.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PokemonSprite(
      id: serializer.fromJson<int>(json['id']),
      pokemonId: serializer.fromJson<int>(json['pokemonId']),
      frontDefault: serializer.fromJson<String?>(json['frontDefault']),
      frontShiny: serializer.fromJson<String?>(json['frontShiny']),
      backDefault: serializer.fromJson<String?>(json['backDefault']),
      backShiny: serializer.fromJson<String?>(json['backShiny']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'pokemonId': serializer.toJson<int>(pokemonId),
      'frontDefault': serializer.toJson<String?>(frontDefault),
      'frontShiny': serializer.toJson<String?>(frontShiny),
      'backDefault': serializer.toJson<String?>(backDefault),
      'backShiny': serializer.toJson<String?>(backShiny),
    };
  }

  PokemonSprite copyWith(
          {int? id,
          int? pokemonId,
          Value<String?> frontDefault = const Value.absent(),
          Value<String?> frontShiny = const Value.absent(),
          Value<String?> backDefault = const Value.absent(),
          Value<String?> backShiny = const Value.absent()}) =>
      PokemonSprite(
        id: id ?? this.id,
        pokemonId: pokemonId ?? this.pokemonId,
        frontDefault:
            frontDefault.present ? frontDefault.value : this.frontDefault,
        frontShiny: frontShiny.present ? frontShiny.value : this.frontShiny,
        backDefault: backDefault.present ? backDefault.value : this.backDefault,
        backShiny: backShiny.present ? backShiny.value : this.backShiny,
      );
  PokemonSprite copyWithCompanion(PokemonSpritesCompanion data) {
    return PokemonSprite(
      id: data.id.present ? data.id.value : this.id,
      pokemonId: data.pokemonId.present ? data.pokemonId.value : this.pokemonId,
      frontDefault: data.frontDefault.present
          ? data.frontDefault.value
          : this.frontDefault,
      frontShiny:
          data.frontShiny.present ? data.frontShiny.value : this.frontShiny,
      backDefault:
          data.backDefault.present ? data.backDefault.value : this.backDefault,
      backShiny: data.backShiny.present ? data.backShiny.value : this.backShiny,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PokemonSprite(')
          ..write('id: $id, ')
          ..write('pokemonId: $pokemonId, ')
          ..write('frontDefault: $frontDefault, ')
          ..write('frontShiny: $frontShiny, ')
          ..write('backDefault: $backDefault, ')
          ..write('backShiny: $backShiny')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, pokemonId, frontDefault, frontShiny, backDefault, backShiny);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PokemonSprite &&
          other.id == this.id &&
          other.pokemonId == this.pokemonId &&
          other.frontDefault == this.frontDefault &&
          other.frontShiny == this.frontShiny &&
          other.backDefault == this.backDefault &&
          other.backShiny == this.backShiny);
}

class PokemonSpritesCompanion extends UpdateCompanion<PokemonSprite> {
  final Value<int> id;
  final Value<int> pokemonId;
  final Value<String?> frontDefault;
  final Value<String?> frontShiny;
  final Value<String?> backDefault;
  final Value<String?> backShiny;
  const PokemonSpritesCompanion({
    this.id = const Value.absent(),
    this.pokemonId = const Value.absent(),
    this.frontDefault = const Value.absent(),
    this.frontShiny = const Value.absent(),
    this.backDefault = const Value.absent(),
    this.backShiny = const Value.absent(),
  });
  PokemonSpritesCompanion.insert({
    this.id = const Value.absent(),
    required int pokemonId,
    this.frontDefault = const Value.absent(),
    this.frontShiny = const Value.absent(),
    this.backDefault = const Value.absent(),
    this.backShiny = const Value.absent(),
  }) : pokemonId = Value(pokemonId);
  static Insertable<PokemonSprite> custom({
    Expression<int>? id,
    Expression<int>? pokemonId,
    Expression<String>? frontDefault,
    Expression<String>? frontShiny,
    Expression<String>? backDefault,
    Expression<String>? backShiny,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (frontDefault != null) 'front_default': frontDefault,
      if (frontShiny != null) 'front_shiny': frontShiny,
      if (backDefault != null) 'back_default': backDefault,
      if (backShiny != null) 'back_shiny': backShiny,
    });
  }

  PokemonSpritesCompanion copyWith(
      {Value<int>? id,
      Value<int>? pokemonId,
      Value<String?>? frontDefault,
      Value<String?>? frontShiny,
      Value<String?>? backDefault,
      Value<String?>? backShiny}) {
    return PokemonSpritesCompanion(
      id: id ?? this.id,
      pokemonId: pokemonId ?? this.pokemonId,
      frontDefault: frontDefault ?? this.frontDefault,
      frontShiny: frontShiny ?? this.frontShiny,
      backDefault: backDefault ?? this.backDefault,
      backShiny: backShiny ?? this.backShiny,
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
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonSpritesCompanion(')
          ..write('id: $id, ')
          ..write('pokemonId: $pokemonId, ')
          ..write('frontDefault: $frontDefault, ')
          ..write('frontShiny: $frontShiny, ')
          ..write('backDefault: $backDefault, ')
          ..write('backShiny: $backShiny')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $PokemonsTable pokemons = $PokemonsTable(this);
  late final $PokemonSpritesTable pokemonSprites = $PokemonSpritesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [pokemons, pokemonSprites];
}

typedef $$PokemonsTableCreateCompanionBuilder = PokemonsCompanion Function({
  Value<int> id,
  required int pokemonId,
  required String name,
  Value<int?> height,
  Value<int?> weight,
});
typedef $$PokemonsTableUpdateCompanionBuilder = PokemonsCompanion Function({
  Value<int> id,
  Value<int> pokemonId,
  Value<String> name,
  Value<int?> height,
  Value<int?> weight,
});

final class $$PokemonsTableReferences
    extends BaseReferences<_$AppDatabase, $PokemonsTable, Pokemon> {
  $$PokemonsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$PokemonSpritesTable, List<PokemonSprite>>
      _pokemonSpritesRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.pokemonSprites,
              aliasName: $_aliasNameGenerator(
                  db.pokemons.pokemonId, db.pokemonSprites.pokemonId));

  $$PokemonSpritesTableProcessedTableManager get pokemonSpritesRefs {
    final manager = $$PokemonSpritesTableTableManager($_db, $_db.pokemonSprites)
        .filter((f) => f.pokemonId.pokemonId($_item.pokemonId));

    final cache = $_typedResult.readTableOrNull(_pokemonSpritesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

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

  Expression<bool> pokemonSpritesRefs(
      Expression<bool> Function($$PokemonSpritesTableFilterComposer f) f) {
    final $$PokemonSpritesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.pokemonId,
        referencedTable: $db.pokemonSprites,
        getReferencedColumn: (t) => t.pokemonId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PokemonSpritesTableFilterComposer(
              $db: $db,
              $table: $db.pokemonSprites,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
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

  Expression<T> pokemonSpritesRefs<T extends Object>(
      Expression<T> Function($$PokemonSpritesTableAnnotationComposer a) f) {
    final $$PokemonSpritesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.pokemonId,
        referencedTable: $db.pokemonSprites,
        getReferencedColumn: (t) => t.pokemonId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PokemonSpritesTableAnnotationComposer(
              $db: $db,
              $table: $db.pokemonSprites,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
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
    (Pokemon, $$PokemonsTableReferences),
    Pokemon,
    PrefetchHooks Function({bool pokemonSpritesRefs})> {
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
          }) =>
              PokemonsCompanion(
            id: id,
            pokemonId: pokemonId,
            name: name,
            height: height,
            weight: weight,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int pokemonId,
            required String name,
            Value<int?> height = const Value.absent(),
            Value<int?> weight = const Value.absent(),
          }) =>
              PokemonsCompanion.insert(
            id: id,
            pokemonId: pokemonId,
            name: name,
            height: height,
            weight: weight,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$PokemonsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({pokemonSpritesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (pokemonSpritesRefs) db.pokemonSprites
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (pokemonSpritesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$PokemonsTableReferences
                            ._pokemonSpritesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$PokemonsTableReferences(db, table, p0)
                                .pokemonSpritesRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.pokemonId == item.pokemonId),
                        typedResults: items)
                ];
              },
            );
          },
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
    (Pokemon, $$PokemonsTableReferences),
    Pokemon,
    PrefetchHooks Function({bool pokemonSpritesRefs})>;
typedef $$PokemonSpritesTableCreateCompanionBuilder = PokemonSpritesCompanion
    Function({
  Value<int> id,
  required int pokemonId,
  Value<String?> frontDefault,
  Value<String?> frontShiny,
  Value<String?> backDefault,
  Value<String?> backShiny,
});
typedef $$PokemonSpritesTableUpdateCompanionBuilder = PokemonSpritesCompanion
    Function({
  Value<int> id,
  Value<int> pokemonId,
  Value<String?> frontDefault,
  Value<String?> frontShiny,
  Value<String?> backDefault,
  Value<String?> backShiny,
});

final class $$PokemonSpritesTableReferences
    extends BaseReferences<_$AppDatabase, $PokemonSpritesTable, PokemonSprite> {
  $$PokemonSpritesTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $PokemonsTable _pokemonIdTable(_$AppDatabase db) =>
      db.pokemons.createAlias($_aliasNameGenerator(
          db.pokemonSprites.pokemonId, db.pokemons.pokemonId));

  $$PokemonsTableProcessedTableManager? get pokemonId {
    if ($_item.pokemonId == null) return null;
    final manager = $$PokemonsTableTableManager($_db, $_db.pokemons)
        .filter((f) => f.pokemonId($_item.pokemonId!));
    final item = $_typedResult.readTableOrNull(_pokemonIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$PokemonSpritesTableFilterComposer
    extends Composer<_$AppDatabase, $PokemonSpritesTable> {
  $$PokemonSpritesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get frontDefault => $composableBuilder(
      column: $table.frontDefault, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get frontShiny => $composableBuilder(
      column: $table.frontShiny, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get backDefault => $composableBuilder(
      column: $table.backDefault, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get backShiny => $composableBuilder(
      column: $table.backShiny, builder: (column) => ColumnFilters(column));

  $$PokemonsTableFilterComposer get pokemonId {
    final $$PokemonsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.pokemonId,
        referencedTable: $db.pokemons,
        getReferencedColumn: (t) => t.pokemonId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PokemonsTableFilterComposer(
              $db: $db,
              $table: $db.pokemons,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PokemonSpritesTableOrderingComposer
    extends Composer<_$AppDatabase, $PokemonSpritesTable> {
  $$PokemonSpritesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get frontDefault => $composableBuilder(
      column: $table.frontDefault,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get frontShiny => $composableBuilder(
      column: $table.frontShiny, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get backDefault => $composableBuilder(
      column: $table.backDefault, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get backShiny => $composableBuilder(
      column: $table.backShiny, builder: (column) => ColumnOrderings(column));

  $$PokemonsTableOrderingComposer get pokemonId {
    final $$PokemonsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.pokemonId,
        referencedTable: $db.pokemons,
        getReferencedColumn: (t) => t.pokemonId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PokemonsTableOrderingComposer(
              $db: $db,
              $table: $db.pokemons,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PokemonSpritesTableAnnotationComposer
    extends Composer<_$AppDatabase, $PokemonSpritesTable> {
  $$PokemonSpritesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get frontDefault => $composableBuilder(
      column: $table.frontDefault, builder: (column) => column);

  GeneratedColumn<String> get frontShiny => $composableBuilder(
      column: $table.frontShiny, builder: (column) => column);

  GeneratedColumn<String> get backDefault => $composableBuilder(
      column: $table.backDefault, builder: (column) => column);

  GeneratedColumn<String> get backShiny =>
      $composableBuilder(column: $table.backShiny, builder: (column) => column);

  $$PokemonsTableAnnotationComposer get pokemonId {
    final $$PokemonsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.pokemonId,
        referencedTable: $db.pokemons,
        getReferencedColumn: (t) => t.pokemonId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PokemonsTableAnnotationComposer(
              $db: $db,
              $table: $db.pokemons,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PokemonSpritesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PokemonSpritesTable,
    PokemonSprite,
    $$PokemonSpritesTableFilterComposer,
    $$PokemonSpritesTableOrderingComposer,
    $$PokemonSpritesTableAnnotationComposer,
    $$PokemonSpritesTableCreateCompanionBuilder,
    $$PokemonSpritesTableUpdateCompanionBuilder,
    (PokemonSprite, $$PokemonSpritesTableReferences),
    PokemonSprite,
    PrefetchHooks Function({bool pokemonId})> {
  $$PokemonSpritesTableTableManager(
      _$AppDatabase db, $PokemonSpritesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PokemonSpritesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PokemonSpritesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PokemonSpritesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> pokemonId = const Value.absent(),
            Value<String?> frontDefault = const Value.absent(),
            Value<String?> frontShiny = const Value.absent(),
            Value<String?> backDefault = const Value.absent(),
            Value<String?> backShiny = const Value.absent(),
          }) =>
              PokemonSpritesCompanion(
            id: id,
            pokemonId: pokemonId,
            frontDefault: frontDefault,
            frontShiny: frontShiny,
            backDefault: backDefault,
            backShiny: backShiny,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int pokemonId,
            Value<String?> frontDefault = const Value.absent(),
            Value<String?> frontShiny = const Value.absent(),
            Value<String?> backDefault = const Value.absent(),
            Value<String?> backShiny = const Value.absent(),
          }) =>
              PokemonSpritesCompanion.insert(
            id: id,
            pokemonId: pokemonId,
            frontDefault: frontDefault,
            frontShiny: frontShiny,
            backDefault: backDefault,
            backShiny: backShiny,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$PokemonSpritesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({pokemonId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (pokemonId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.pokemonId,
                    referencedTable:
                        $$PokemonSpritesTableReferences._pokemonIdTable(db),
                    referencedColumn: $$PokemonSpritesTableReferences
                        ._pokemonIdTable(db)
                        .pokemonId,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$PokemonSpritesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PokemonSpritesTable,
    PokemonSprite,
    $$PokemonSpritesTableFilterComposer,
    $$PokemonSpritesTableOrderingComposer,
    $$PokemonSpritesTableAnnotationComposer,
    $$PokemonSpritesTableCreateCompanionBuilder,
    $$PokemonSpritesTableUpdateCompanionBuilder,
    (PokemonSprite, $$PokemonSpritesTableReferences),
    PokemonSprite,
    PrefetchHooks Function({bool pokemonId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$PokemonsTableTableManager get pokemons =>
      $$PokemonsTableTableManager(_db, _db.pokemons);
  $$PokemonSpritesTableTableManager get pokemonSprites =>
      $$PokemonSpritesTableTableManager(_db, _db.pokemonSprites);
}
