import 'logout_user_stub.dart'
    if (dart.library.io) 'logout_user_mobile.dart'
    if (dart.library.js) 'logout_user_web.dart' as impl;

// Cross-platform method for logging out user (via universal login).
Future<void> logoutUser({
  required String auth0Domain,
  required String auth0ClientId,
  required String audience,
  String? scheme,
}) =>
    impl.logoutUser(
      audience: audience,
      auth0Domain: auth0Domain,
      auth0ClientId: auth0ClientId,
      scheme: scheme,
    );
