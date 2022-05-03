import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

class JwtAuthInterceptor extends InterceptorsWrapper {
  final FirebaseAuth auth;

  JwtAuthInterceptor(this.auth);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final jwtToken = await auth.currentUser?.getIdToken();
    options.headers["Authorization"] = "Bearer $jwtToken";
    handler.next(options);
  }
}
