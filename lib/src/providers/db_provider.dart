import 'dart:io';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class DBProvider{
  static Database? _database;
  static final DBProvider db = DBProvider._();

  DBProvider._();

Future<Database> get database async{
    _database ??= await initDB();

    return _database!;
  }

  Future<Database> initDB() async{
    // Path donde almacenaremos la bd
    Directory documentDirectory = await getApplicationDocumentsDirectory();

    final path = join(documentDirectory.path, 'assets/database/asuncionTour.db');
    await deleteDatabase(path);
    debugPrint(path);

    var existsDB = await databaseExists(path);

    if(!existsDB){
      try{
        await Directory(dirname(path)).create(recursive: true);
      } catch(_){}

      ByteData data = await rootBundle.load(join('assets/database/asuncionTour.db'));
      List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      await File(path).writeAsBytes(bytes, flush: true);
    }

    var db = await openDatabase(path);
    return db;
  }
}