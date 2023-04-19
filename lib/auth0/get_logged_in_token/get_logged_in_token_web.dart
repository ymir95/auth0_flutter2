import 'package:auth0_flutter2/auth0/auth0_flutter_web/src/options.dart';
import 'package:auth0_flutter2/auth0/init_auth0/init_auth0_web.dart';
import 'package:auth0_flutter2/auth0/auth0_flutter_web/auth0_flutter_web.dart'
    as auth0_web;

/// Fetches authenticated user ID on web.
Future<String?> getLoggedInToken({
  required String auth0Domain,
  required String auth0ClientId,
  String? redirectUri,
  required String audience,
}) async {
  try {
    auth0_web.Auth0 auth0 = await initAuth0Web(
      auth0Domain: auth0Domain,
      auth0ClientId: auth0ClientId,
      redirectUri: redirectUri,
    );

    var token = await auth0.getTokenSilently(
        options: GetTokenSilentlyOptions(
      audience: audience,
      redirect_uri: redirectUri ?? "",
    ));
    return token;
  } catch (e) {
    return null;
  }
}
