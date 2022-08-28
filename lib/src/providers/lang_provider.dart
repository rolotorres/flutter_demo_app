import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import 'package:flutter_demo_app/src/models/lang_model.dart';
import 'package:flutter_demo_app/src/providers/db_provider.dart';

class LangProvider extends ChangeNotifier{
  List<LangModel> langs = [];

  Future<List<LangModel>> getAllLangs() async{
    Database db = await DBProvider.db.initDB();
    final result = await db.query('languages');

    print(result);

    return result.isNotEmpty ? result.map<LangModel>((langs) => LangModel.fromJson(langs)).toList() : [];
  }

  Future<LangModel?> getLangById(int id) async{
    Database db = await DBProvider.db.initDB();
    final result = await db.query('languages', where: 'id = ?', whereArgs: [id]);

    return result.isNotEmpty ? LangModel.fromJson(result.first) : null;
  }

  Future loadLangs<LangModel>() async{
    final langs = await getAllLangs();
    this.langs = [...langs];
  }
}