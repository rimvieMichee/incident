import 'package:logger/logger.dart';

late Logger _logger;

/// Initialize logger
void initLogger() {
  _logger = Logger(
    printer: PrettyPrinter(
      lineLength: 180,
      methodCount: 0,
      errorMethodCount: 10,
    ),
  );
}

/// Verbose logging
void logV(dynamic message) {
  _logger.v(message);
}

/// Debug logging
void logD(dynamic message) {
  _logger.d(message);
}

/// Info logging
void logI(dynamic message) {
  _logger.i(message);
}

/// Warn logging
void logW(dynamic message) {
  _logger.w(message);
}

/// Error logging
void logE(dynamic message) {
  _logger.e(message);
}

/// What The F**k error logging
void logWTF(dynamic message) {
  _logger.wtf(message);
}