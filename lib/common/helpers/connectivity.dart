import 'package:data_connection_checker/data_connection_checker.dart';

abstract class Connectivity {
  Future<bool> get isConnected;
}

class ConnectvityImpl implements Connectivity {
  final DataConnectionChecker connectionChecker;

  ConnectvityImpl(this.connectionChecker);

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}
