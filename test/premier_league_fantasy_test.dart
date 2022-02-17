import 'package:flutter_test/flutter_test.dart';

import 'package:premier_league_fantasy/src/premier_league_fantasy.dart';
import 'package:premier_league_fantasy/src/premierleaguemodel.dart';

void main() {
  test('adds one to input values', () async{
        GetFantasyData g1 = GetFantasyData();
        PremierLeague p1 = await g1.getData();
        List<Event> events = p1.events;  // List of data of all gameweeks
        GameSettings gameSettings = p1.gameSettings; // Different gamesettings of the FPL app
        List<Phase> phases = p1.phases;  // Info on all gameweeks start and end date
        List<Team> teams = p1.teams;     // Info on all the teams of the Premier League
        int totalPlayers = p1.totalPlayers;  // total number of active FPL players
        List<Element> elements = p1.elements;  // Info on all the Players playing in the Premier League
        List<ElementStat> elementStats = p1.elementStats;
        List<ElementType> elementTypes = p1.elementTypes; // Tells the position at which a particular player plays.

  });
}
