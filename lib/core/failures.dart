import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure({
    required this.message,
  });

  @override
  List get props => [message];
}

class ServerFailure extends Failure {
  const ServerFailure({required super.message});
}

/// Used for value objects
abstract class ValueFailure<T> extends Failure {
  const ValueFailure({required super.message});

  T get failedValue;
}

class EmptyFieldFailure extends ValueFailure<String> {
  final String _failedValue;
  const EmptyFieldFailure(
    this._failedValue,
  ) : super(
          message: 'Required field',
        );

  @override
  get failedValue => _failedValue;
}
