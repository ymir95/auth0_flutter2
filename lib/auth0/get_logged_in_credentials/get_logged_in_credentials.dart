import 'get_logged_in_credentials_stub.dart'
    if (dart.library.io) 'get_logged_in_credentials_mobile.dart'
    if (dart.library.js) 'get_logged_in_credentials_web.dart' as impl;

/// Cross-platform method for fetching authenticated user ID.
Future<Map<String, dynamic>> getLoggedInCredentials({
  required String auth0Domain,
  required String auth0ClientId,
  String? redirectUri,
}) =>
    impl.getLoggedInCredentials(
      auth0Domain: auth0Domain,
      auth0ClientId: auth0ClientId,
      redirectUri: redirectUri,
    );
