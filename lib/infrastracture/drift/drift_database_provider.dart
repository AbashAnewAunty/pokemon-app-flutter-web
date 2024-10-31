import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokemon_app_flutter_web/infrastracture/drift/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'drift_database_provider.g.dart';

@Riverpod(keepAlive: true)
AppDatabase driftDatabase(Ref ref) => AppDatabase();
