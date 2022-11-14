import 'package:flutter/material.dart';
import 'package:resto_cafe/src/app.dart';
import 'package:resto_cafe/src/helpers/api_helper.dart';

void main() {
  ApiHelper.initialize();
  runApp(const MyApp());
}
