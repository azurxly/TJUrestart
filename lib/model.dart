import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.code,
    required this.data,
    required this.msg,
  });

  int code;
  Data data;
  String msg;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    code: json["code"],
    data: Data.fromJson(json["data"]),
    msg: json["msg"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "data": data.toJson(),
    "msg": msg,
  };
}

class Data {
  Data({
    required this.effect,
    required this.context,
  });

  List<ListElement> effect;
  String context;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    effect: List<ListElement>.from(json["list"].map((x) => ListElement.fromJson(x))),
    context: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "effect": List<dynamic>.from(effect.map((x) => x.toJson())),
    "context": context,
  };
}

class ListElement {
  ListElement({
    required this.text,
    required this.knowledge,
    required this.sociality,
    required this.fish,
    required this.emo,
  });

  String text;
  int knowledge;
  int sociality;
  int fish;
  int emo;

  factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
    text: json["text"],
    knowledge: json["knowledge"],
    sociality: json["sociality"],
    fish: json["fish"],
    emo: json["emo"],
  );

  Map<String, dynamic> toJson() => {
    "text": text,
    "knowledge": knowledge,
    "sociality": sociality,
    "fish": fish,
    "emo": emo,
  };
}