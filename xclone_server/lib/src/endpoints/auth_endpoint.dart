import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/module.dart' as auth;
import 'package:xclone_server/src/generated/user.dart';

class AuthEndPoint extends Endpoint {
  Future createAccountWithEmailAndPassword(Session session ) async {
   auth.AuthConfig.set(auth.AuthConfig(onUserCreated: (session, userInfo) => userInfo.,))
   User.db.insertRow(session, rows)


  }
}
