function croak(msg) {
  throw new Error(msg);
}

var client_id = process.env.g_client_id || croak("Missing g_client_id"),
  client_secret = process.env.g_client_secret || croak("Missing g_client_secret"),
  redirect_uri =
    process.env.g_redirect_uri || "http://localhost:8000/account/oauth/google",
  auth_url =
    "https://accounts.google.com/o/oauth2/v2/auth?response_type=code&redirect_uri=" +
    redirect_uri +
    "&scope=profile%20email&client_id=" +
    client_id;

module.exports = {
  client_id: client_id,
  client_secret: client_secret,
  auth_url: auth_url,
  redirect_uri: redirect_uri
};