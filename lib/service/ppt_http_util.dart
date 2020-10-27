import 'package:dio/dio.dart';
import 'package:flutter_101ppt/model/ppt_model.dart';
import 'package:flutter_101ppt/service/ppt_http_code.dart';
import 'package:flutter_101ppt/service/ppt_http_define.dart';

class HttpUtil {
  static Dio dio;

  static Future<PPTBaseEntity> request(
    String url, {
    data,
    Map<String, String> headers,
    method,
    requestToken = true,
  }) async {
    Dio dio = createInstance();
    dio.options.method = method;
    if (headers != null) {
      dio.options.headers.addAll(new Map<String, String>.from(headers));
    } else {
      dio.options.headers.clear();
    }

    PPTBaseEntity baseEntity;

    try {
      Response response = await dio.request(url, data: data);
      if (response != null) {
        baseEntity = PPTBaseEntity(
            code: PPTHttpCode.SUCCESS, message: "", data: response.data);
      } else {
        baseEntity = PPTBaseEntity(code: PPTHttpCode.UN_KNOWN, message: "未知错误");
      }
    } catch (e) {
      baseEntity = createErrorEntity(e);
    }

    return baseEntity;
  }

  static Dio createInstance() {
    if (dio == null) {
      BaseOptions options = new BaseOptions(
        connectTimeout: CONNECT_TIMEOUT,
        receiveTimeout: RECEIVE_TIMEOUT,
      );

      dio = new Dio(options);
    }
    return dio;
  }

  static PPTBaseEntity createErrorEntity(DioError error) {
    switch (error.type) {
      case DioErrorType.CANCEL:
        {
          return PPTBaseEntity(code: PPTHttpCode.CANCEL, message: "请求取消");
        }
        break;
      case DioErrorType.CONNECT_TIMEOUT:
        {
          return PPTBaseEntity(
              code: PPTHttpCode.CONNECT_TIMEOUT, message: "连接超时");
        }
        break;
      case DioErrorType.SEND_TIMEOUT:
        {
          return PPTBaseEntity(code: PPTHttpCode.SEND_TIMEOUT, message: "请求超时");
        }
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        {
          return PPTBaseEntity(
              code: PPTHttpCode.RECEIVE_TIMEOUT, message: "响应超时");
        }
        break;
      case DioErrorType.RESPONSE:
        {
          try {
            int errCode = error.response.statusCode;
            String errMsg = error.response.statusMessage;
            return PPTBaseEntity(
              code: errCode,
              message: errMsg,
              data: error.response.data,
            );
          } catch (e) {
            return PPTBaseEntity(code: PPTHttpCode.UN_KNOWN, message: "未知错误");
          }
        }
        break;
      default:
        {
          return PPTBaseEntity(
              code: PPTHttpCode.CANCEL, message: error.message);
        }
    }
  }
}
