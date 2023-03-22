import 'package:dio/dio.dart';
import 'model/event_data.dart';


class DioService{
  static Future<Data> getData(int major) async{
    Map <String,dynamic> data = <String,dynamic>{};
    data["major"] = major;
    var response = await Dio()
        .get('http://8.130.47.43:8081/api/tdck/event',queryParameters: data);
    var _data = Data.fromJson(response.data["data"]);
    return _data;
  }
}
