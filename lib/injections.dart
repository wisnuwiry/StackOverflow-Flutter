import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
// import 'package:hive/hive.dart';

import 'common/common.dart';
import 'forum/infrastructure/infrastructure.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {}

Future<void> questionDependencies() async {
  // Presentation Layer - Bloc
  //  serviceLocator.registerFactory(
  //   () => CatalogListBloc(
  //     catalogService: serviceLocator(),
  //   ),
  // );

  // Application Layer - Facades
  // serviceLocator.registerLazySingleton(() => QuestionFacadeService());

  // Infrastructure Layer - Repository
  serviceLocator.registerLazySingleton(() => QuestionRepository(
        connectivity: serviceLocator(),
        questionLocalDataProvider: serviceLocator(),
        questionRemoteDataProvider: serviceLocator(),
      ));

  // Infrastructure Layer - Data Source
  serviceLocator.registerLazySingleton(
    () => QuestionRemoteDataProvider(),
  );
  serviceLocator.registerLazySingleton(
    () => QuestionLocalDataProvider(),
  );

  // Common and Core
  serviceLocator.registerFactory(
    () => ConnectvityImpl(serviceLocator()),
  );

  // External
  serviceLocator.registerLazySingleton(() => DataConnectionChecker());
  // serviceLocator.registerLazySingleton(() => Hive.init());
}
