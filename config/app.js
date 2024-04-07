// var dbHost = process.env.dbHost || "localhost";
console.log(`dbUrl: ${process.env.dbUrl}`);

var dbUrl = process.env.dbUrl || "mongodb://localhost:27017/treads";
module.exports = {
  name: "treads",
  title: "treads",
  commands: {
    package:
      "electron-packager electron.js treads --electronVersion=2.0.12 --overwrite --icon=/public/images/logo/logo.png --prune=true --out=release",
    build: ""
  },
  http: {
    host: "localhost",
    port: 8000
  },
  author: "Vlad",
  version: "2.0.0",
  db: {
    connectionUri: dbUrl,
    params: {},
    collections: ["moment", "user", "feeling", "ask"]
  }
};
