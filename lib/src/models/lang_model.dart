import 'dart:convert';
import 'dart:typed_data';

LangModel langModelFromJson(String str) => LangModel.fromJson(json.decode(str));

String langModelToJson(LangModel data) => json.encode(data.toJson());

class LangModel {
    LangModel({
        required this.id,
        required this.flag,
        required this.language,
    });

    int id;
    Uint8List flag;
    String language;

    factory LangModel.fromJson(Map<String, dynamic> json) => LangModel(
        id: json["id"],
        flag: json["flag"],
        language: json["language"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "flag": flag,
        "language": language,
    };
}
