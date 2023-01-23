import 'package:client/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(initializerName: 'initialize')
Future<void> configureDependencies() async => await getIt.initialize();
