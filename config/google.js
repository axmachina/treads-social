function croak(msg) {
  throw new Error(msg);
}

const config = {
  g_client_id: process.env.g_client_id || croak("Missing g_client_id"),
  g_client_secret: process.env.g_client_secret || croak("Missing g_client_secret"),
  g_redirect_uri: process.env.g_redirect_uri || "http://localhost:8000/account/oauth/google",
}

config.auth_url = "https://accounts.google.com/o/oauth2/v2/auth?response_type=code&redirect_uri=" + config.g_redirect_uri + "&scope=profile%20email&client_id=" + config.g_client_id;

// print out config props and values for debugging
console.log("g_client_id: " + config.g_client_id);
console.log("g_client_secret: " + config.g_client_secret);
console.log("g_redirect_uri: " + config.g_redirect_uri);
console.log("auth_url: " + config.auth_url);

module.exports = config;