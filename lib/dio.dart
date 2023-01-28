import 'package:dio/dio.dart';
import 'model.dart';

class DioService {
  static Future<Data> getdata() async {
    var response = await Dio()
        .get('https://8dc6-183-199-225-255.ngrok.io/api/commonevent');
    var chaos = response.data;
    return chaos;
  }
}