class EventData {
  EventData({
    required this.code,
    required this.msg,
    required this.data,
  });
  late final int code;
  late final String msg;
  late final Data data;

  EventData.fromJson(Map<String, dynamic> json){
    code = json['code'];
    msg = json['msg'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['msg'] = msg;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.context,
    required this.effect,
  });
  late final String context;
  late final Effect effect;

  Data.fromJson(Map<String, dynamic> json){
    context = json['context'];
    effect = Effect.fromJson(json['effect']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['context'] = context;
    _data['effect'] = effect.toJson();
    return _data;
  }
}

class Effect {
  Effect({
    required this.text,
    required this.knowledge,
    required this.sociality,
    required this.fish,
    required this.emo,
  });
  late final String text;
  late final int knowledge;
  late final int sociality;
  late final int fish;
  late final int emo;

  Effect.fromJson(Map<String, dynamic> json){
    text = json['text'];
    knowledge = json['knowledge'];
    sociality = json['sociality'];
    fish = json['fish'];
    emo = json['emo'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['text'] = text;
    _data['knowledge'] = knowledge;
    _data['sociality'] = sociality;
    _data['fish'] = fish;
    _data['emo'] = emo;
    return _data;
  }
}