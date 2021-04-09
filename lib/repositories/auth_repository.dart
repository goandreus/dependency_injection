import 'dart:io';

class AuthRepository {
  final HttpClient _http;
  AuthRepository(this._http);

  Future<Map<String, dynamic>> doLogin(String nick, String pass) async {}
}
