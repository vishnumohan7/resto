import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class FileHelper {
  static Future<String> readJSONFile(String path) async {
    String fileData = await rootBundle.loadString(path);
    return fileData;
  }
}
