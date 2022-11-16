import 'package:flutter/material.dart';
import 'package:movies_app/src/app.dart';
import 'package:movies_app/src/helpers/api_helper.dart';

void main() {
  ApiHelper.initialize();
  runApp(const MyApp());
}
