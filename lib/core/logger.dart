import 'dart:developer';

import 'package:equatable/equatable.dart';

class Logger extends Equatable {
  void logError({
    required String where,
    required String message,
  }) =>
      log('$where: $message');

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
