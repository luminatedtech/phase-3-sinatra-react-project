# Phase 3 Project Guidelines

## Learning Goals

- Build a web basic API with Sinatra and Active Record to support a React
  frontend

## Introduction

Congrats on getting through all the material for Phase 3! Now's the time to put
it all together and build something from scratch to reinforce what you know and
expand your horizons.

The focus of this project is **building a Sinatra API backend** that uses
**Active Record** to access and persist data in a database, which will be used
by a separate **React frontend** that interacts with the database via the API.

## Requirements

For this project, you must:

- Use Active Record to interact with a database.
- Have at least two models with a one-to-many relationship.
- At a minimum, set up the following API routes in Sinatra:
  - create and read actions for both models
  - full CRUD capability for one of the models
- Build a separate React frontend application that interacts with the API to
  perform CRUD actions.
- Implement proper front end state management. You should be updating state using a
  setState function after receiving your response from a POST, PATCH, or DELETE 
  request. You should NOT be relying on a GET request to update state. 
- Use good OO design patterns. You should have separate classes for each of your
  models, and create instance and class methods as necessary. 
- Routes in your application (both client side and back end) should follow RESTful
  conventions.
- Use your back end optimally. Pass JSON for related associations to the front 
  end from the back end. You should use active record methods in your controller to grab
  the needed data from your database and provide as JSON to the front end. You
  should NOT be relying on filtering front end state or a separate fetch request to
  retrieve related data.

For example, build a todo list application with a React frontend interface and a
Sinatra backend API, where a user can:

- **Create** a new todo
- **Read** a list of all todos
- **Update** an individual todo
- **Delete** a todo

A `Todo` can be tagged with a `Category`, so that each todo _belongs to_ a
category and each category _has many_ todos.

## Getting Started

### Backend Setup

This repository has all the starter code needed to get a Sinatra backend up and
running. [**Fork and clone**][fork link] this repository to get started. Then, run
`bundle install` to install the gems.

**Important**: Be sure you fork a copy of the repo into your GitHub account
before cloning it. You can do this by using the link above or by clicking the
"Octocat" button at the top of this page, then clicking "Fork" in the upper
right corner of the repo page.

[fork link]: https://github.com/learn-co-curriculum/phase-3-sinatra-react-project/fork

The `app/controllers/application_controller.rb` file has an example GET route
handler. Replace this route with routes for your project.

You can start your server with:

```console
$ bundle exec rake server
```

This will run your server on port
[http://localhost:9292](http://localhost:9292).

### Frontend Setup

Your backend and your frontend should be in **two different repositories**.

Create a new repository in a **separate folder** with a React app for your
frontend. To do this, `cd` out of the backend project directory, and use
[create-react-app][] to generate the necessary code for your React frontend:

```console
$ npx create-react-app my-app-frontend
```

After creating the project locally, you should also
[create a repository on GitHub][create repo] to host your repo and help
collaborate, if you're working with a partner.

### Fetch Example

Your React app should make fetch requests to your Sinatra backend! Here's an
example:

```js
fetch("http://localhost:9292/test")
  .then((r) => r.json())
  .then((data) => console.log(data));
```

## Project Tips

- This project is intended to focus more on the backend than the frontend, so
  try and keep the React side of things relatively simple. Focus on working with
  Active Record and performing CRUD actions. What are some interesting queries you can write? What kinds of questions can you ask of your data?
- Once you have a project idea, come up with a domain model and decide what
  relationships exist between the models in your application. Use a tool like
  [dbdiagram.io][] to help visualize your models.
- Decide on your API endpoints. What data should they return? What kind of CRUD
  action should they perform? What data do they need from the client?
- Use [Postman][postman download] to test your endpoints.
- Use `binding.pry` to debug your requests on the server. It's very helpful to use a
  `binding.pry` in your controller within a route to see what `params` are being
  sent.
- Use the [Network Tab in the Dev Tools][network tab] in the frontend to debug
  your requests.

## Resources

- [create-react-app][]
- [dbdiagram.io][]
- [Postman][postman download]

[create-react-app]: https://create-react-app.dev/docs/getting-started
[create repo]: https://docs.github.com/en/get-started/quickstart/create-a-repo
[dbdiagram.io]: https://dbdiagram.io/
[postman download]: https://www.postman.com/downloads/
[network tab]: https://developer.chrome.com/docs/devtools/network/


Trainer.create(name: "Cynthia", region: "Sinnoh", title: "Champion", trainer_type: nil,avatar_url:)

Trainer.create(name: "Shauntal", region: "Unova", title: "First", trainer_type: 12, avatar_url:)
Trainer.create(name: "Marshal", region: "Unova", title: "Second", trainer_type: 7, avatar_url:)
Trainer.create(name: "Grimsley", region: "Unova", title: "Third", trainer_type: 13, avatar_url:)
Trainer.create(name: "Caitlin", region: "Unova", title: "Fourth", trainer_type: 11, avatar_url:)
Trainer.create(name: "Alder", region: "Unova", title: "Champion", trainer_type: nil, avatar_url:)

Trainer.create(name: "Malva", region: "Kalos", title: "First", trainer_type: 2, avatar_url:)
Trainer.create(name: "Siebold", region: "Kalos", title: "Second", trainer_type: 1, avatar_url:)
Trainer.create(name: "Wikstrom", region: "Kalos", title: "Third", trainer_type: 9, avatar_url:)
Trainer.create(name: "Drasna", region: "Kalos", title: "Fourth", trainer_type: 8, avatar_url:)
Trainer.create(name: "Diantha", region: "Kalos", title: "Champion", trainer_type: nil, avatar_url:)

Trainer.create(name: "Hala", region: "Aloha", title: "First", trainer_type: 7, avatar_url:)
Trainer.create(name: "Olivia", region: "Aloha", title: "Second", trainer_type: 5, avatar_url:)
Trainer.create(name: "Acerola", region: "Aloha", title: "Third", trainer_type: 12, avatar_url:)
Trainer.create(name: "Kahili", region: "Aloha", title: "Fourth", trainer_type: 4, avatar_url:)
Trainer.create(name: "Kukui", region: "Aloha", title: "Champion", trainer_type: nil, avatar_url:)

Pokemon.create(name: "Dewgong", trainer_id: 1, type1_id:"WATER", type2_id: 16, level: 51, avatar_url:)
Pokemon.create(name: "Jynx", trainer_id: 1, type1_id:"PSYCHIC", type2_id: 16, level: 51, avatar_url:)
Pokemon.create(name: "Cloyster", trainer_id: 1, type1_id:"WATER", type2_id: 16, level: 51, avatar_url:)
Pokemon.create(name: "Slowbro", trainer_id: 1, type1_id:"WATER", type2_id: 11, level: 51, avatar_url:)
Pokemon.create(name: "Lapras", trainer_id: 1, type1_id:"WATER", type2_id: 16, level: 52, avatar_url:)

Pokemon.create(name: "Onyx", trainer_id: 2, type1_id:"ROCK", type2_id: 6, level: 52, avatar_url:)
Pokemon.create(name: "Hitmochan", trainer_id: 2, type1_id:"PSYCHIC", type2_id: 16, level: 52, avatar_url:)
Pokemon.create(name: "Hitmonlee", trainer_id: 2, type1_id:"FIGHTING", type2_id: nil, level: 52, avatar_url:)
Pokemon.create(name: "Poliwrath", trainer_id: 2, type1_id:"WATER", type2_id: 7, level: 52, avatar_url:)
Pokemon.create(name: "Machamp", trainer_id: 2, type1_id:"FIGHTING", type2_id: nil, level: 53, avatar_url:)

Pokemon.create(name: "Arbok", trainer_id: 3, type1_id:"POISON", type2_id: nil, level: 53, avatar_url:)
Pokemon.create(name: "Gengar", trainer_id: 3, type1_id:"GHOST", type2_id: 18, level: 53, avatar_url:)
Pokemon.create(name: "Golbat", trainer_id: 3, type1_id:"POISON", type2_id: 4, level: 53, avatar_url:)
Pokemon.create(name: "Weezing", trainer_id: 3, type1_id:"POISON", type2_id: nil, level: 53, avatar_url:)
Pokemon.create(name: "Gengar", trainer_id: 3, type1_id:"GHOST", type2_id: 18, level: 54, avatar_url:)

Pokemon.create(name: "Seadra", trainer_id: 4, type1_id: 1, type2_id: nil, level: 54, avatar_url:)
Pokemon.create(name: "Aerodactyl", trainer_id: 4, type1_id: 4, type2_id: 5, level: 54, avatar_url:)
Pokemon.create(name: "Gyarados", trainer_id: 4, type1_id: 1, type2_id: 4, level: 54, avatar_url:)
Pokemon.create(name: "Charizard", trainer_id: 4, type1_id: 2, type2_id: 4, level: 54, avatar_url:)
Pokemon.create(name: "Dragonite", trainer_id: 4, type1_id: 8, type2_id: 4, level: 55, avatar_url:)

Pokemon.create(name: "Heracross", trainer_id: 5, type1_id:"FIGHTING", type2_id: 15, level: 72, avatar_url:)
Pokemon.create(name: "Alakazam", trainer_id: 5, type1_id:"PSYCHIC", type2_id: nil, level: 73, avatar_url:)
Pokemon.create(name: "Tyranitar", trainer_id: 5, type1_id:"ROCK", type2_id: 13, level: 72, avatar_url:)
Pokemon.create(name: "Gyarados", trainer_id: 5, type1_id:"WATER", type2_id: 4, level: 73, avatar_url:)
Pokemon.create(name: "Arcanine", trainer_id: 5, type1_id:"FIRE", type2_id: nil, level: 73, avatar_url:)
Pokemon.create(name: "Venusaur", trainer_id: 5, type1_id:"GRASS", type2_id: 18, level: 75, avatar_url:)

Pokemon.create(name: "Xatu", trainer_id: 6, type1_id: 4, type2_id: 11, level: 40, avatar_url:)
Pokemon.create(name: "Jynx", trainer_id: 6, type1_id: 16, type2_id: 11, level: 41, avatar_url:)
Pokemon.create(name: "Slowbro", trainer_id: 6, type1_id: 1, type2_id: 11, level: 41, avatar_url:)
Pokemon.create(name: "Exeggutor", trainer_id: 6, type1_id: 3, type2_id: 11, level: 41, avatar_url:)
Pokemon.create(name: "Xatu", trainer_id: 6, type1_id: 4, type2_id: 11, level: 42, avatar_url:)

Pokemon.create(name: "Ariados", trainer_id: 7, type1_id: 15, type2_id: 18, level: 40, avatar_url:)
Pokemon.create(name: "Forretress", trainer_id: 7, type1_id: 15, type2_id: 9, level: 43, avatar_url:)
Pokemon.create(name: "Muk", trainer_id: 7, type1_id: 18, type2_id: nil, level: 42, avatar_url:)
Pokemon.create(name: "Venomoth", trainer_id: 7, type1_id: 15, type2_id: 18, level: 41, avatar_url:)
Pokemon.create(name: "Crobat", trainer_id: 7, type1_id: 4, type2_id: 18, level: 44, avatar_url:)

Pokemon.create(name: "Hitmontop", trainer_id: 8, type1_id: 7, type2_id: nil, level: 42, avatar_url:)
Pokemon.create(name: "Hitmonlee", trainer_id: 8, type1_id: 7, type2_id: nil, level: 42, avatar_url:)
Pokemon.create(name: "Hitmonchan", trainer_id: 8, type1_id: 7, type2_id: nil, level: 42, avatar_url:)
Pokemon.create(name: "Onyx", trainer_id: 8, type1_id: 5, type2_id: 6, level: 43, avatar_url:)
Pokemon.create(name: "Machamp", trainer_id: 8, type1_id: 7, type2_id: nil, level: 46, avatar_url:)

Pokemon.create(name: "Umbreon", trainer_id: 9, type1_id: 13, type2_id: nil, level: 42, avatar_url:)
Pokemon.create(name: "Vileplume", trainer_id: 9, type1_id: 3, type2_id: 18, level: 42, avatar_url:)
Pokemon.create(name: "Murkrow", trainer_id: 9, type1_id: 4, type2_id: 13, level: 44, avatar_url:)
Pokemon.create(name: "Gengar", trainer_id: 9, type1_id: 18, type2_id: 12, level: 45, avatar_url:)
Pokemon.create(name: "Houndoom", trainer_id: 9, type1_id: 2, type2_id: 13, level: 47, avatar_url:)

Pokemon.create(name: "Gyarados", trainer_id: 10, type1_id: 4, type2_id: 1, level: 44, avatar_url:)
Pokemon.create(name: "Dragonite", trainer_id: 10, type1_id: 4, type2_id: 8, level: 49, avatar_url:)
Pokemon.create(name: "Dragonite", trainer_id: 10, type1_id: 4, type2_id: 8, level: 49, avatar_url:)
Pokemon.create(name: "Aerodactyl", trainer_id: 10, type1_id: 4, type2_id: 5, level: 48, avatar_url:)
Pokemon.create(name: "Charizard", trainer_id: 10, type1_id: 4, type2_id: 2, level: 48, avatar_url:)
Pokemon.create(name: "Dragonite", trainer_id: 10, type1_id: 4, type2_id: 8, level: 50, avatar_url:)

Pokemon.create(name: "Mightyena", trainer_id: 11, type1_id: 13, type2_id: nil, level: 50, avatar_url:)
Pokemon.create(name: "Shiftry", trainer_id: 11, type1_id: 3, type2_id: 13, level: 50, avatar_url:)
Pokemon.create(name: "Cacturne", trainer_id: 11, type1_id: 3, type2_id: 13, level: 50, avatar_url:)
Pokemon.create(name: "Sharpedo", trainer_id: 11, type1_id: 1, type2_id: 13, level: 50, avatar_url:)
Pokemon.create(name: "Absol", trainer_id: 11, type1_id: 13, type2_id: nil, level: 52, avatar_url:)

Pokemon.create(name: "Dusclops", trainer_id: 12, type1_id: 12, type2_id: nil, level: 51, avatar_url:)
Pokemon.create(name: "Banette", trainer_id: 12, type1_id: 12, type2_id: nil, level: 51, avatar_url:)
Pokemon.create(name: "Sableye", trainer_id: 12, type1_id: 12, type2_id: 13, level: 51, avatar_url:)
Pokemon.create(name: "Banette", trainer_id: 12, type1_id: 12, type2_id: nil, level: 51, avatar_url:)
Pokemon.create(name: "Dusknoir", trainer_id: 12, type1_id: 12, type2_id: nil, level: 53, avatar_url:)

Pokemon.create(name: "Glalie", trainer_id: 13, type1_id: 16, type2_id: nil, level: 52, avatar_url:)
Pokemon.create(name: "Frostlass", trainer_id: 13, type1_id: 16, type2_id: 12, level: 52, avatar_url:)
Pokemon.create(name: "Glalie", trainer_id: 13, type1_id: 16, type2_id: nil, level: 52, avatar_url:)
Pokemon.create(name: "Froslass", trainer_id: 13, type1_id: 16, type2_id: 12, level: 52, avatar_url:)
Pokemon.create(name: "Walrein", trainer_id: 13, type1_id: 16, type2_id: 1, level: 54, avatar_url:)

Pokemon.create(name: "Altaria", trainer_id: 14, type1_id: 8, type2_id: 4, level: 53, avatar_url:)
Pokemon.create(name: "Flygon", trainer_id: 14, type1_id: 8, type2_id: 6, level: 53, avatar_url:)
Pokemon.create(name: "Kingdra", trainer_id: 14, type1_id: 8, type2_id: 1, level: 53, avatar_url:)
Pokemon.create(name: "Flygon", trainer_id: 14, type1_id: 8, type2_id: 6, level: 53, avatar_url:)
Pokemon.create(name: "Salamence", trainer_id: 14, type1_id: 8, type2_id: 4, level: 55,avatar_url:)

Pokemon.create(name: "Skarmory", trainer_id: 15, type1_id: 9, type2_id: 4, level: 57, avatar_url:)
Pokemon.create(name: "Claydol", trainer_id: 15, type1_id: 6, type2_id: 11, level: 57, avatar_url:)
Pokemon.create(name: "Aggron", trainer_id: 15, type1_id: 9, type2_id: 5, level: 57, avatar_url:)
Pokemon.create(name: "Cradily", trainer_id: 15, type1_id: 3, type2_id: 5, level: 57, avatar_url:)
Pokemon.create(name: "Armaldo", trainer_id: 15, type1_id: 5, type2_id: 15, level: 57, avatar_url:)
Pokemon.create(name: "Metagross", trainer_id: 15, type1_id: 9, type2_id: 11, level: 59, avatar_url:)

Pokemon.create(name: "Dustox", trainer_id: 16, type1_id: 15, type2_id: 18, level: 53, avatar_url:)
Pokemon.create(name: "Beautifly", trainer_id: 16, type1_id: 15, type2_id: 4, level: 53, avatar_url:)
Pokemon.create(name: "Vespiquen", trainer_id: 16, type1_id: 15, type2_id: 4, level: 54, avatar_url:)
Pokemon.create(name: "Heracross", trainer_id: 16, type1_id: 15, type2_id: 7, level: 54, avatar_url:)
Pokemon.create(name: "Drapion", trainer_id: 16, type1_id: 18, type2_id: 13, level: 57, avatar_url:)

Pokemon.create(name: "Quagsire", trainer_id: 17, type1_id: 1, type2_id: 6, level: 55, avatar_url:)
Pokemon.create(name: "Sudowoodo", trainer_id: 17, type1_id: 5, type2_id: nil, level: 56, avatar_url:)
Pokemon.create(name: "Golem", trainer_id: 17, type1_id: 5, type2_id: 6, level: 56, avatar_url:)
Pokemon.create(name: "Whiscash", trainer_id: 17, type1_id: 1, type2_id: 6, level: 55, avatar_url:, avatar_url:)
Pokemon.create(name: "Hippowdon", trainer_id: 17, type1_id: 6, type2_id: nil, level: 59, avatar_url:)

Pokemon.create(name: "Rapidash", trainer_id: 18, type1_id: 2, type2_id: nil, level: 58, avatar_url:)
Pokemon.create(name: "Steelix", trainer_id: 18, type1_id: 6, type2_id: 9, level: 57, avatar_url:)
Pokemon.create(name: "Drifblim", trainer_id: 18, type1_id: 4, type2_id: 12, level: 58, avatar_url:)
Pokemon.create(name: "Lopunny", trainer_id: 18, type1_id: 10, type2_id: nil, level: 57, avatar_url:)
Pokemon.create(name: "Infernape", trainer_id: 18, type1_id: 2, type2_id: 7, level: 61, avatar_url:)

Pokemon.create(name: "Mr. Mime", trainer_id: 19, type1_id: 11, type2_id: 17, level: 59, avatar_url:)
Pokemon.create(name: "Girafarig", trainer_id: 19, type1_id: 11, type2_id: 10, level: 59, avatar_url:)
Pokemon.create(name: "Medicham", trainer_id: 19, type1_id: 11, type2_id: 7, level: 60, avatar_url:)
Pokemon.create(name: "Alakazam", trainer_id: 19, type1_id: 11, type2_id: nil, level: 60, avatar_url:)
Pokemon.create(name: "Bronzong", trainer_id: 19, type1_id: 11, type2_id: 9, level: 63, avatar_url:)

Pokemon.create(name: "Spiritomb", trainer_id: 20, type1_id: 12, type2_id: 13, level: 61, avatar_url:)
Pokemon.create(name: "Roserade", trainer_id: 20, type1_id: 3, type2_id: 18, level: 60, avatar_url:)
Pokemon.create(name: "Gastrodon", trainer_id: 20, type1_id: 1, type2_id: 6, level: 60, avatar_url:)
Pokemon.create(name: "Lucario", trainer_id: 20, type1_id: 7, type2_id: 9, level: 63, avatar_url:)
Pokemon.create(name: "Milotic", trainer_id: 20, type1_id: 1, type2_id: nil, level: 63, avatar_url:)
Pokemon.create(name: "Garchomp", trainer_id: 20, type1_id: 8, type2_id: 6, level: 66, avatar_url:)

Pokemon.create(name: "Cofagrigus", trainer_id: 21, type1_id: 12, type2_id: nil, level: 60, avatar_url:)
Pokemon.create(name: "Drifblim", trainer_id: 21, type1_id: 12, type2_id: 4, level: 60, avatar_url:)
Pokemon.create(name: "Golurk", trainer_id: 21, type1_id: 12, type2_id: 6, level: 60, avatar_url:)
Pokemon.create(name: "Banette", trainer_id: 21, type1_id: 12, type2_id: nil, level: 60, avatar_url:)
Pokemon.create(name: "Chandelure", trainer_id: 21, type1_id: 12, type2_id: 2, level: 62, avatar_url:)

Pokemon.create(name: "Throh", trainer_id: 22, type1_id: 7, type2_id: nil, level: 60, avatar_url:)
Pokemon.create(name: "Sawk", trainer_id: 22, type1_id: 7, type2_id: 18, level: 60, avatar_url:)
Pokemon.create(name: "Mienshao", trainer_id: 22, type1_id: 7, type2_id: 6, level: 60, avatar_url:)
Pokemon.create(name: "Lucario", trainer_id: 22, type1_id: 7, type2_id: 9, level: 60, avatar_url:)
Pokemon.create(name: "Conkeldurr", trainer_id: 22, type1_id: 7, type2_id: nil, level: 62, avatar_url:)

Pokemon.create(name: "Liepard", trainer_id: 23, type1_id: 13, type2_id: nil, level: 60, avatar_url:)
Pokemon.create(name: "Scrafty", trainer_id: 23, type1_id: 13, type2_id: 7, level: 60, avatar_url:)
Pokemon.create(name: "Krookodile", trainer_id: 23, type1_id: 13, type2_id: 6, level: 60, avatar_url:)
Pokemon.create(name: "Absol", trainer_id: 23, type1_id: 13, type2_id: nil, level: 60, avatar_url:)
Pokemon.create(name: "Bisharp", trainer_id: 23, type1_id: 13, type2_id: 9, level: 62, avatar_url:)

Pokemon.create(name: "Musharna", trainer_id: 24, type1_id: 11, type2_id: nil, level: 60, avatar_url:)
Pokemon.create(name: "Sigilyph", trainer_id: 24, type1_id: 11, type2_id: 4, level: 60, avatar_url:)
Pokemon.create(name: "Reuniculus", trainer_id: 24, type1_id: 11, type2_id: nil, level: 60, avatar_url:)
Pokemon.create(name: "Gothitelle", trainer_id: 24, type1_id: 11, type2_id: nil, level: 60, avatar_url:)
Pokemon.create(name: "Metagross", trainer_id: 24, type1_id: 11, type2_id: 7, level: 62, avatar_url:)

Pokemon.create(name: "Accelgor", trainer_id: 25, type1_id: 15, type2_id: nil, level: 75, avatar_url:)
Pokemon.create(name: "Bouffalant", trainer_id: 25, type1_id: 10, type2_id: nil, level: 75, avatar_url:)
Pokemon.create(name: "Druddigon", trainer_id: 25, type1_id: 8, type2_id: nil, level: 75, avatar_url:)
Pokemon.create(name: "Vanilluxe", trainer_id: 25, type1_id: 16, type2_id: nil, level: 75, avatar_url:)
Pokemon.create(name: "Escavalier", trainer_id: 25, type1_id: 15, type2_id: 9, level: 75, avatar_url:)
Pokemon.create(name: "Volcarona", trainer_id: 25, type1_id: 15, type2_id: 2, level: 77, avatar_url:)

Pokemon.create(name: "Pyroar", trainer_id: 26, type1_id: 2, type2_id: 10, level: 63, avatar_url:)
Pokemon.create(name: "Torkoal", trainer_id: 26, type1_id: 2, type2_id: nil, level: 63, avatar_url:)
Pokemon.create(name: "Chandelure", trainer_id: 26, type1_id: 2, type2_id: 12, level: 63, avatar_url:)
Pokemon.create(name: "Talonflame", trainer_id: 26, type1_id: 2, type2_id: 4, level: 65, avatar_url:)

Pokemon.create(name: "Clawitzer", trainer_id: 27, type1_id: 1, type2_id: nil, level: 63, avatar_url:)
Pokemon.create(name: "Gyarados", trainer_id: 27, type1_id: 1, type2_id: 4, level: 63, avatar_url:)
Pokemon.create(name: "Starmie", trainer_id: 27, type1_id: 1, type2_id: 11, level: 63, avatar_url:)
Pokemon.create(name: "Barbabarcle", trainer_id: 27, type1_id: 1, type2_id: 5, level: 65, avatar_url:)

Pokemon.create(name: "Klefki", trainer_id: 28, type1_id: 9, type2_id: 17, level: 63, avatar_url:)
Pokemon.create(name: "Probopass", trainer_id: 28, type1_id: 9, type2_id: 5, level: 63, avatar_url:)
Pokemon.create(name: "Scizor", trainer_id: 28, type1_id: 9, type2_id: 15, level: 63, avatar_url:)
Pokemon.create(name: "Aegislash", trainer_id: 28, type1_id: 9, type2_id: 12, level: 65, avatar_url:)

Pokemon.create(name: "Dragalge", trainer_id: 29, type1_id: 8, type2_id: 18, level: 63, avatar_url:)
Pokemon.create(name: "Druddigon", trainer_id: 29, type1_id: 8, type2_id: nil, level: 63, avatar_url:)
Pokemon.create(name: "Altaria", trainer_id: 29, type1_id: 8, type2_id: 4, level: 63, avatar_url:)
Pokemon.create(name: "Noivern", trainer_id: 29, type1_id: 8, type2_id: 4, level: 65, avatar_url:)

Pokemon.create(name: "Hawlucha", trainer_id: 30, type1_id: 4, type2_id: 7, level: 64, avatar_url:)
Pokemon.create(name: "Tyrantrum", trainer_id: 30, type1_id: 8, type2_id: 5, level: 65, avatar_url:)
Pokemon.create(name: "Aurorus", trainer_id: 30, type1_id: 16, type2_id: 5, level: 65, avatar_url:)
Pokemon.create(name: "Gourgeist", trainer_id: 30, type1_id: 3, type2_id: 12, level: 65, avatar_url:)
Pokemon.create(name: "Goodra", trainer_id: 30, type1_id: 8, type2_id: nil, level: 66, avatar_url:)
Pokemon.create(name: "Gardevoir", trainer_id: 30, type1_id: 11, type2_id: 17, level: 68, avatar_url:)

Pokemon.create(name: "Hariyama", trainer_id: 31, type1_id: 7, type2_id: nil, level: 54, avatar_url:)
Pokemon.create(name: "Primeape", trainer_id: 31, type1_id: 7, type2_id: nil, level: 54, avatar_url:)
Pokemon.create(name: "Bewear", trainer_id: 31, type1_id: 7, type2_id: 10, level: 54, avatar_url:)
Pokemon.create(name: "Poliwrath", trainer_id: 31, type1_id: 1, type2_id: 7, level: 54, avatar_url:)
Pokemon.create(name: "Crabominable", trainer_id: 31, type1_id: 7, type2_id: 16, level: 55, avatar_url:)

Pokemon.create(name: "Armaldo", trainer_id: 32, type1_id: 5, type2_id: 15, level: 56, avatar_url:)
Pokemon.create(name: "Cradily", trainer_id: 32, type1_id: 5, type2_id: 3, level: 56, avatar_url:)
Pokemon.create(name: "Gigalith", trainer_id: 32, type1_id: 5, type2_id: nil, level: 56, avatar_url:)
Pokemon.create(name: "Probopass", trainer_id: 32, type1_id: 5, type2_id: 9, level: 56, avatar_url:) 
Pokemon.create(name: "Lycanroc", trainer_id: 32, type1_id: 5, type2_id: nil, level: 57, avatar_url:)

Pokemon.create(name: "Banette", trainer_id: 33, type1_id: 12, type2_id: nil, level: 56, avatar_url:)
Pokemon.create(name: "Drifblim", trainer_id: 33, type1_id: 12, type2_id: 4, level: 56, avatar_url:)
Pokemon.create(name: "Dhelmise", trainer_id: 33, type1_id: 12, type2_id: 3, level: 56, avatar_url:)
Pokemon.create(name: "Froslass", trainer_id: 33, type1_id: 12, type2_id: 16, level: 56, avatar_url:)
Pokemon.create(name: "Palossand", trainer_id: 33, type1_id: 12, type2_id: 6, level: 57, avatar_url:)

Pokemon.create(name: "Braviary", trainer_id: 34, type1_id: 10, type2_id: 4, level: 56, avatar_url:)
Pokemon.create(name: "Hawlucha", trainer_id: 34, type1_id: 4, type2_id: 7, level: 56, avatar_url:)
Pokemon.create(name: "Oricorio", trainer_id: 34, type1_id: 4, type2_id: 2, level: 56, avatar_url:)
Pokemon.create(name: "Mandibuzz", trainer_id: 34, type1_id: 4, type2_id: 13, level: 56, avatar_url:)
Pokemon.create(name: "Toucannon", trainer_id: 34, type1_id: 10, type2_id: 4, level: 57, avatar_url:)

Pokemon.create(name: "Lycanroc", trainer_id: 35, type1_id: 5, type2_id: nil, level: 57, avatar_url:)
Pokemon.create(name: "Ninetales", trainer_id: 35, type1_id: 16, type2_id: 17, level: 56, avatar_url:)
Pokemon.create(name: "Braviary", trainer_id: 35, type1_id: 4, type2_id: 10, level: 56, avatar_url:)
Pokemon.create(name: "Magnezone", trainer_id: 35, type1_id: 9, type2_id: 14, level: 56, avatar_url:)
Pokemon.create(name: "Snorlax", trainer_id: 35, type1_id: 10, type2_id: nil, level: 56, avatar_url:)
Pokemon.create(name: "Decidueye", trainer_id: 35, type1_id: 3, type2_id: 12, level: 58, avatar_url:)