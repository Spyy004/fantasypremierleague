library premier_league_fantasy;
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:premier_league_fantasy/src/premierleaguemodel.dart';



class GetFantasyData
{
  Future<PremierLeague> getData() async {
    Uri uri = Uri.parse("https://fantasy.premierleague.com/api/bootstrap-static/");
    var response = await http.get(uri);
    var jsonData = jsonDecode(response.body);
    PremierLeague p1 = PremierLeague.fromJson(jsonData);
    return p1;
  }
}
