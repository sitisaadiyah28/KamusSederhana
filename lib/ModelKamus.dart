// To parse this JSON data, do
//
//     final modelKamus = modelKamusFromJson(jsonString);

import 'dart:convert';

List<ModelKamus> modelKamusFromJson(String str) => List<ModelKamus>.from(json.decode(str).map((x) => ModelKamus.fromJson(x)));

String modelKamusToJson(List<ModelKamus> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ModelKamus {
  ModelKamus({
    this.idKamus,
    this.kata,
    this.deksripsi,
  });

  String idKamus;
  String kata;
  String deksripsi;

  factory ModelKamus.fromJson(Map<String, dynamic> json) => ModelKamus(
    idKamus: json["id_kamus"],
    kata: json["kata"],
    deksripsi: json["deksripsi"],
  );

  Map<String, dynamic> toJson() => {
    "id_kamus": idKamus,
    "kata": kata,
    "deksripsi": deksripsi,
  };

}
