
import 'package:logger/logger.dart';

final log = Logger(
  printer: PrettyPrinter(
      methodCount: 2,
      errorMethodCount: 10,
      lineLength: 150,
      colors: true,
      printEmojis: true,
      printTime: false
  ),
);
