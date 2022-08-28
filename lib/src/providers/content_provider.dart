import 'package:sqflite/sqflite.dart';

import 'package:flutter_demo_app/src/models/content_model.dart';
import 'package:flutter_demo_app/src/providers/db_provider.dart';

class ContentProvider{
  
  Future<List<ContentModel>> getAllContents() async{
    Database db = await DBProvider.db.initDB();
    final result = await db.query('content');

    return result.isNotEmpty ? result.map((contents) => ContentModel.fromJson(contents)).toList() : [];
  }

  Future<ContentModel?> getContentById(String id) async{
    Database db = await DBProvider.db.initDB();
    final result = await db.query('content', where: 'id = ?', whereArgs: [id]);

    return result.isNotEmpty ? ContentModel.fromJson(result.first) : null;
  }
}