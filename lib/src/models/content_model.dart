import 'dart:convert';

ContentModel contentModelFromJson(String str) => ContentModel.fromJson(json.decode(str));

String scanModelToJson(ContentModel data) => json.encode(data.toJson());

class ContentModel {
    ContentModel({
        required this.id,
        required this.langId,
        required this.imgId,
        required this.name,
        required this.description,
    });

    String? id;
    int? langId;
    String? imgId;
    String? name;
    String? description;

    factory ContentModel.fromJson(Map<String, dynamic> json) => ContentModel(
        id: json["id"],
        langId: json["langId"],
        imgId: json["imgId"],
        name: json["name"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "langId": langId,
        "imgId": imgId,
        "name": name,
        "description": description,
    };
}
