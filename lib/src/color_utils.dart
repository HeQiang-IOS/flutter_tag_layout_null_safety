import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Color getRandomColor() {
  return Color.fromARGB(255, Random.secure().nextInt(200),
      Random.secure().nextInt(200), Random.secure().nextInt(200));
}
