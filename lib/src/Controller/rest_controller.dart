import 'package:dio/dio.dart';

class RestController{
    final dio = Dio();

    Future<Response> Get(String url) async {
        Response response =  await dio.get(url);
        return response;
    }
}
