import 'dart:developer';

class Logger {
  void logError({
    required String where,
    required String message,
  }) =>
      log('$where: $message');
}
