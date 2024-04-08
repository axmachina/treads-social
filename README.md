# Welcome to Treads

Treads is a tiny but powerful social networking platform made with Node.js and MongoDB.

## Features

- Sign in using local authentication, Instagram or Google.
- Search for your other users.
- Chat with your friends in realtime.
- All feeds divided into 3 categories
  - thoughts \(tweets\)
  - events \(location can be specified\)
  - moments \(personal post\)
- Like and comment on a feed.
- API for developers
- View your/others profile.
- Follow a particular user and get notified for his/her activities.
- Change your profile picture, bio, people who follow you etc.
- Electron app

And a lot more to be added soon...

## To Do's

- Fix Instagram/Facebook login (code ready / fix api)
- Activity feature for user to see follow requests and his/her daily activity.
- Notifications
- Maps showing status updates of people followed

## Requirements

- [Node.js](https://nodejs.org)
  - expressjs [ExpressJS HTTP middleware](https://npmjs.org/package/express)
  - ejs [Embedded JavaScript templates](https://npmjs.org/package/ejs)
- [MongoDB](http://mongodb.org) 

## Installation

Clone the repo locally then install all the dependencies using [NPM](https://npmjs.org/)

```bash
$ git clone https://github.com/axmachina/treads-social.git
$ cd treads-social
$ npm i
$ ./start.sh
```

Use *.sh scripts to manage app.

## Local Development

Before running, we need to add the Instgram and Google API Credentials to the project. Under the `config` directory of the repo, you will find `instagram.js` and `google.js`. We need to add the `<CLIENT_ID>`, `<CLIENT_SECRET>` and `<host>:<port>` with our own API credentials

```javascript
/** REPLACE YOUR API CREDENTIALS HERE **/
var in_client_id = 'XXXXXXXXXXXXXXXXXX', // <CLIENT_ID>
    in_client_secret = 'XXXXXXXXXXXXXXXXXXXX', // <CLIENT_SECRET>
```

Now Replace the `<host>` & `<port>` with the redirect uri specified in the [Instagram API Dashboard](https://www.instagram.com/developer) and [Google API Dashboard](https://developers.google.com). Default is `http://localhost:80/account/oauth`.

```javascript
var in_redirect_uri = "http://localhost:80/account/oauth/:service";
```

Finally start the MongoDB server in a seperate bash/pm2

```bash
$ mongod
```

(can also use a cloud instance if local option is not available)

and then start the treads server via `npm`.

```bash
$ npm start
```

## To know

The app uses [mongoose](https://npmjs.org/package/mongoose) as an ORM for performing CRUD operations on MongoDB and [express.js](https://npmjs.com/package/express) for server-side HTTP routing.