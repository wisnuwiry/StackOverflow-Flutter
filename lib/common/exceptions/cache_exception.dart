import 'package:equatable/equatable.dart';

/// Exception for Cache
class CacheException extends Equatable implements Exception {
  /// Message exception
  final String message;
  
  ///
  const CacheException({this.message});

  @override
  List<Object> get props => [message];
}
