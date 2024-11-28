import 'package:drift/drift.dart';
import 'package:drift/wasm.dart';

part 'database.g.dart';

class Pokemons extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get pokemonId => integer()();
  TextColumn get name => text()();
  IntColumn get height => integer().nullable()();
  IntColumn get weight => integer().nullable()();
  TextColumn get frontDefault => text().nullable()();
  TextColumn get frontShiny => text().nullable()();
  TextColumn get backDefault => text().nullable()();
  TextColumn get backShiny => text().nullable()();
  TextColumn get latestCry => text().nullable()();
  TextColumn get legacyCry => text().nullable()();
  TextColumn get type1 => text()();
  TextColumn get type2 => text().nullable()();
}

@DriftDatabase(tables: [Pokemons])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(connectOnWeb());

  @override
  int get schemaVersion => 1;
}

DatabaseConnection connectOnWeb() {
  return DatabaseConnection.delayed(Future(() async {
    final result = await WasmDatabase.open(
      databaseName: 'app_database', // prefer to only use valid identifiers here
      sqlite3Uri: Uri.parse('sqlite3.wasm'),
      driftWorkerUri: Uri.parse('drift_worker.js'),
    );

    if (result.missingFeatures.isNotEmpty) {
      // Depending how central local persistence is to your app, you may want
      // to show a warning to the user if only unrealiable implemetentations
      // are available.
      print('Using ${result.chosenImplementation} due to missing browser '
          'features: ${result.missingFeatures}');
    }

    return result.resolvedExecutor;
  }));
}
