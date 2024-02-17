import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class GetYesNoAnswer {
  Future<Message> getAnswer() async {
    //dio o http para peticiones || dio es más ligero y tiene menos dependencias
    final _dio = Dio(BaseOptions());
    final response = await _dio.get('https://yesno.wtf/api');

    throw UnimplementedError();
  }
}
