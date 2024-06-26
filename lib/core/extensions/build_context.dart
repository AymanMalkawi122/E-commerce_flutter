
import 'package:flutter/cupertino.dart';

extension DeviceDimensions on BuildContext {
  Size get deviceDimensions => MediaQuery.of(this).size;
}