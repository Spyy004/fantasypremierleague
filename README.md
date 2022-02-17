<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

# Premier League Fantasy Data.
This is a package built by a football fan and a tech enthusiast for easy access of fantasy PL data. There are packages in javascript and python but there was nothing for Flutter.
So I decided to build one. 

## Features

Gets data of all the players currently playing in the premier league.
There are different classes for different data.
To get the list of players, create a class Elements
To get the list of teams, create a class Teams

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

- To use the package. You need to create an instance of the GetFantasyData class and call the getData function.
- You will get all the data from the FPL API. All the data has been neatly organized in Dart classes.
```dart
void func()async
{
  GetFantasyData g1 = GetFantasyData();  // create an instance of the getFantasyData class
  PremierLeague p1 = await g1.getData(); // create an instance of a PremierLeague Class
  List<Event> events = p1.events;  // List of data of all gameweeks
  GameSettings gameSettings = p1.gameSettings; // Different gamesettings of the FPL app
  List<Phase> phases = p1.phases;  // Info on all gameweeks start and end date
  List<Team> teams = p1.teams;     // Info on all the teams of the Premier League
  int totalPlayers = p1.totalPlayers;  // total number of active FPL players
  List<Element> elements = p1.elements;  // Info on all the Players playing in the Premier League
  print(elements[278]).webName; // index-1 is the player id. You can know the player id by searching for it online. In this case the player id is 277 and the player is C.Ronaldo
  List<ElementStat> elementStats = p1.elementStats;
  List<ElementType> elementTypes = p1.elementTypes; // Tells the position at which a particular player plays.
}

```

## Additional information

I have built this package because I am a huge Football fan and an active FPL player. Feel free to contribute by adding new functions like
- Getting a list of top performers.
- Getting a list of injured players.
- Getting info of your FPL team. (will need authentication)
