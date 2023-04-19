import 'get_logged_in_token_stub.dart'
    if (dart.library.io) 'get_logged_in_token_mobile.dart'
    if (dart.library.js) 'get_logged_in_token_web.dart' as impl;

/// Cross-platform method for fetching authenticated user ID.
Future<String?> getLoggedInToken({
  required String auth0Domain,
  required String auth0ClientId,
  String? redirectUri,
  required String audience,
}) =>
    impl.getLoggedInToken(
      auth0Domain: auth0Domain,
      auth0ClientId: auth0ClientId,
      audience: audience,
      redirectUri: redirectUri,
    );
