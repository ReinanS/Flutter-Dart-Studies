import 'package:autentication_login/models/usuario.dart';
import 'package:autentication_login/services/login_api.dart';

class LoginBloc {
  Future<Usuario> login(String login, String password) async {
    Usuario usuario = await LoginApi.login(login, password);

    return usuario;
  }
}
