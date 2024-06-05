
import 'dart:io';

import 'package:path_provider/path_provider.dart';


const String saved_directory = ' /data/user/0/com.example.census_support_tool_app/app_flutter/saved_records';
const String completed_directory = ' /data/user/0/com.example.census_support_tool_app/app_flutter/completed_records';

Future<List<String>> listApplicationFiles(String path) async {
  final path = await _applicationPath;
  List<String> files = [];
  Directory directory = Directory(path);
  directory.listSync().forEach((element) {
    files.add(element.path);
  });
  return files;
}



Future<String> get _applicationPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
    
}

Future<File>  _localFile( String name) async {
  final path = await _applicationPath;

  
  return File('$path/$name.txt');
}

Future<Directory> _localDirectory(String name) async {
  final path = await _applicationPath;
  return Directory('$path/$name');
}

Future<File> writeFile(String message, String title ) async {
  final file = await _localFile(title);

  // Write the file
  return file.writeAsString(message);
}

//no te vayas señor stark