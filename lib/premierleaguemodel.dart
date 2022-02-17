// To parse this JSON data, do
//
//     final premierLeague = premierLeagueFromJson(jsonString);
import 'dart:convert';

PremierLeague premierLeagueFromJson(String str) => PremierLeague.fromJson(json.decode(str));

String premierLeagueToJson(PremierLeague data) => json.encode(data.toJson());

class PremierLeague {
  PremierLeague({
    required this.events,
    required this.gameSettings,
    required this.phases,
    required this.teams,
    required this.totalPlayers,
    required this.elements,
    required this.elementStats,
    required this.elementTypes,
  });

  List<Event> events;
  GameSettings gameSettings;
  List<Phase> phases;
  List<Team> teams;
  int totalPlayers;
  List<Element> elements;
  List<ElementStat> elementStats;
  List<ElementType> elementTypes;

  factory PremierLeague.fromJson(Map<String, dynamic> json) => PremierLeague(
    events: List<Event>.from(json["events"].map((x) => Event.fromJson(x))),
    gameSettings: GameSettings.fromJson(json["game_settings"]),
    phases: List<Phase>.from(json["phases"].map((x) => Phase.fromJson(x))),
    teams: List<Team>.from(json["teams"].map((x) => Team.fromJson(x))),
    totalPlayers: json["total_players"],
    elements: List<Element>.from(json["elements"].map((x) => Element.fromJson(x))),
    elementStats: List<ElementStat>.from(json["element_stats"].map((x) => ElementStat.fromJson(x))),
    elementTypes: List<ElementType>.from(json["element_types"].map((x) => ElementType.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "events": List<dynamic>.from(events.map((x) => x.toJson())),
    "game_settings": gameSettings.toJson(),
    "phases": List<dynamic>.from(phases.map((x) => x.toJson())),
    "teams": List<dynamic>.from(teams.map((x) => x.toJson())),
    "total_players": totalPlayers,
    "elements": List<dynamic>.from(elements.map((x) => x.toJson())),
    "element_stats": List<dynamic>.from(elementStats.map((x) => x.toJson())),
    "element_types": List<dynamic>.from(elementTypes.map((x) => x.toJson())),
  };
}

class ElementStat {
  ElementStat({
    required this.label,
    required this.name,
  });

  String label;
  String name;

  factory ElementStat.fromJson(Map<String, dynamic> json) => ElementStat(
    label: json["label"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "label": label,
    "name": name,
  };
}

class ElementType {
  ElementType({
    required this.id,
    required this.pluralName,
    required this.pluralNameShort,
    required this.singularName,
    required this.singularNameShort,
    required this.squadSelect,
    required this.squadMinPlay,
    required this.squadMaxPlay,
    required this.uiShirtSpecific,
    required this.subPositionsLocked,
    required this.elementCount,
  });

  int id;
  String pluralName;
  String pluralNameShort;
  String singularName;
  String singularNameShort;
  int squadSelect;
  int squadMinPlay;
  int squadMaxPlay;
  bool uiShirtSpecific;
  List<int> subPositionsLocked;
  int elementCount;

  factory ElementType.fromJson(Map<String, dynamic> json) => ElementType(
    id: json["id"],
    pluralName: json["plural_name"],
    pluralNameShort: json["plural_name_short"],
    singularName: json["singular_name"],
    singularNameShort: json["singular_name_short"],
    squadSelect: json["squad_select"],
    squadMinPlay: json["squad_min_play"],
    squadMaxPlay: json["squad_max_play"],
    uiShirtSpecific: json["ui_shirt_specific"],
    subPositionsLocked: List<int>.from(json["sub_positions_locked"].map((x) => x)),
    elementCount: json["element_count"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "plural_name": pluralName,
    "plural_name_short": pluralNameShort,
    "singular_name": singularName,
    "singular_name_short": singularNameShort,
    "squad_select": squadSelect,
    "squad_min_play": squadMinPlay,
    "squad_max_play": squadMaxPlay,
    "ui_shirt_specific": uiShirtSpecific,
    "sub_positions_locked": List<dynamic>.from(subPositionsLocked.map((x) => x)),
    "element_count": elementCount,
  };
}

class Element {
  Element({
    required this.chanceOfPlayingNextRound,
    required this.chanceOfPlayingThisRound,
    required this.code,
    required this.costChangeEvent,
    required this.costChangeEventFall,
    required this.costChangeStart,
    required this.costChangeStartFall,
    required this.dreamteamCount,
    required this.elementType,
    required this.epNext,
    required this.epThis,
    required this.eventPoints,
    required this.firstName,
    required this.form,
    required this.id,
    required this.inDreamteam,
    required this.news,
    required this.newsAdded,
    required this.nowCost,
    required this.photo,
    required this.pointsPerGame,
    required this.secondName,
    required this.selectedByPercent,
    required this.special,
    required this.squadNumber,
    required this.status,
    required this.team,
    required this.teamCode,
    required this.totalPoints,
    required this.transfersIn,
    required this.transfersInEvent,
    required this.transfersOut,
    required this.transfersOutEvent,
    required this.valueForm,
    required this.valueSeason,
    required this.webName,
    required this.minutes,
    required this.goalsScored,
    required this.assists,
    required this.cleanSheets,
    required this.goalsConceded,
    required this.ownGoals,
    required this.penaltiesSaved,
    required this.penaltiesMissed,
    required this.yellowCards,
    required this.redCards,
    required this.saves,
    required this.bonus,
    required this.bps,
    required this.influence,
    required this.creativity,
    required this.threat,
    required this.ictIndex,
    required this.influenceRank,
    required this.influenceRankType,
    required this.creativityRank,
    required this.creativityRankType,
    required this.threatRank,
    required this.threatRankType,
    required this.ictIndexRank,
    required this.ictIndexRankType,
    required this.cornersAndIndirectFreekicksOrder,
    required this.cornersAndIndirectFreekicksText,
    required this.directFreekicksOrder,
    required this.directFreekicksText,
    required this.penaltiesOrder,
    required this.penaltiesText,
  });

  int chanceOfPlayingNextRound;
  int chanceOfPlayingThisRound;
  int code;
  int costChangeEvent;
  int costChangeEventFall;
  int costChangeStart;
  int costChangeStartFall;
  int dreamteamCount;
  int elementType;
  String epNext;
  String epThis;
  int eventPoints;
  String firstName;
  String form;
  int id;
  bool inDreamteam;
  String news;
  DateTime? newsAdded;
  int nowCost;
  String photo;
  String pointsPerGame;
  String secondName;
  String selectedByPercent;
  bool special;
  dynamic squadNumber;
  Status? status;
  int team;
  int teamCode;
  int totalPoints;
  int transfersIn;
  int transfersInEvent;
  int transfersOut;
  int transfersOutEvent;
  String valueForm;
  String valueSeason;
  String webName;
  int minutes;
  int goalsScored;
  int assists;
  int cleanSheets;
  int goalsConceded;
  int ownGoals;
  int penaltiesSaved;
  int penaltiesMissed;
  int yellowCards;
  int redCards;
  int saves;
  int bonus;
  int bps;
  String influence;
  String creativity;
  String threat;
  String ictIndex;
  int influenceRank;
  int influenceRankType;
  int creativityRank;
  int creativityRankType;
  int threatRank;
  int threatRankType;
  int ictIndexRank;
  int ictIndexRankType;
  int cornersAndIndirectFreekicksOrder;
  String cornersAndIndirectFreekicksText;
  int directFreekicksOrder;
  String directFreekicksText;
  int penaltiesOrder;
  String penaltiesText;

  factory Element.fromJson(Map<String, dynamic> json) => Element(
    chanceOfPlayingNextRound: json["chance_of_playing_next_round"] == null ? 0 : json["chance_of_playing_next_round"],
    chanceOfPlayingThisRound: json["chance_of_playing_this_round"] == null ? 0 : json["chance_of_playing_this_round"],
    code: json["code"],
    costChangeEvent: json["cost_change_event"],
    costChangeEventFall: json["cost_change_event_fall"],
    costChangeStart: json["cost_change_start"],
    costChangeStartFall: json["cost_change_start_fall"],
    dreamteamCount: json["dreamteam_count"],
    elementType: json["element_type"],
    epNext: json["ep_next"],
    epThis: json["ep_this"],
    eventPoints: json["event_points"],
    firstName: json["first_name"],
    form: json["form"],
    id: json["id"],
    inDreamteam: json["in_dreamteam"],
    news: json["news"],
    newsAdded: json["news_added"] == null ? null : DateTime.parse(json["news_added"]),
    nowCost: json["now_cost"],
    photo: json["photo"],
    pointsPerGame: json["points_per_game"],
    secondName: json["second_name"],
    selectedByPercent: json["selected_by_percent"],
    special: json["special"],
    squadNumber: json["squad_number"],
    status: statusValues.map[json["status"]],
    team: json["team"],
    teamCode: json["team_code"],
    totalPoints: json["total_points"],
    transfersIn: json["transfers_in"],
    transfersInEvent: json["transfers_in_event"],
    transfersOut: json["transfers_out"],
    transfersOutEvent: json["transfers_out_event"],
    valueForm: json["value_form"],
    valueSeason: json["value_season"],
    webName: json["web_name"],
    minutes: json["minutes"],
    goalsScored: json["goals_scored"],
    assists: json["assists"],
    cleanSheets: json["clean_sheets"],
    goalsConceded: json["goals_conceded"],
    ownGoals: json["own_goals"],
    penaltiesSaved: json["penalties_saved"],
    penaltiesMissed: json["penalties_missed"],
    yellowCards: json["yellow_cards"],
    redCards: json["red_cards"],
    saves: json["saves"],
    bonus: json["bonus"],
    bps: json["bps"],
    influence: json["influence"],
    creativity: json["creativity"],
    threat: json["threat"],
    ictIndex: json["ict_index"],
    influenceRank: json["influence_rank"],
    influenceRankType: json["influence_rank_type"],
    creativityRank: json["creativity_rank"],
    creativityRankType: json["creativity_rank_type"],
    threatRank: json["threat_rank"],
    threatRankType: json["threat_rank_type"],
    ictIndexRank: json["ict_index_rank"],
    ictIndexRankType: json["ict_index_rank_type"],
    cornersAndIndirectFreekicksOrder: json["corners_and_indirect_freekicks_order"] == null ? 0 : json["corners_and_indirect_freekicks_order"],
    cornersAndIndirectFreekicksText: json["corners_and_indirect_freekicks_text"],
    directFreekicksOrder: json["direct_freekicks_order"] == null ? 0 : json["direct_freekicks_order"],
    directFreekicksText: json["direct_freekicks_text"],
    penaltiesOrder: json["penalties_order"] == null ? 0 : json["penalties_order"],
    penaltiesText: json["penalties_text"],
  );

  Map<String, dynamic> toJson() => {
    "chance_of_playing_next_round": chanceOfPlayingNextRound == null ? null : chanceOfPlayingNextRound,
    "chance_of_playing_this_round": chanceOfPlayingThisRound == null ? null : chanceOfPlayingThisRound,
    "code": code,
    "cost_change_event": costChangeEvent,
    "cost_change_event_fall": costChangeEventFall,
    "cost_change_start": costChangeStart,
    "cost_change_start_fall": costChangeStartFall,
    "dreamteam_count": dreamteamCount,
    "element_type": elementType,
    "ep_next": epNext,
    "ep_this": epThis,
    "event_points": eventPoints,
    "first_name": firstName,
    "form": form,
    "id": id,
    "in_dreamteam": inDreamteam,
    "news": news,
    "news_added": newsAdded == null ? null : newsAdded.toString(),
    "now_cost": nowCost,
    "photo": photo,
    "points_per_game": pointsPerGame,
    "second_name": secondName,
    "selected_by_percent": selectedByPercent,
    "special": special,
    "squad_number": squadNumber,
    "status": statusValues.reverse[status],
    "team": team,
    "team_code": teamCode,
    "total_points": totalPoints,
    "transfers_in": transfersIn,
    "transfers_in_event": transfersInEvent,
    "transfers_out": transfersOut,
    "transfers_out_event": transfersOutEvent,
    "value_form": valueForm,
    "value_season": valueSeason,
    "web_name": webName,
    "minutes": minutes,
    "goals_scored": goalsScored,
    "assists": assists,
    "clean_sheets": cleanSheets,
    "goals_conceded": goalsConceded,
    "own_goals": ownGoals,
    "penalties_saved": penaltiesSaved,
    "penalties_missed": penaltiesMissed,
    "yellow_cards": yellowCards,
    "red_cards": redCards,
    "saves": saves,
    "bonus": bonus,
    "bps": bps,
    "influence": influence,
    "creativity": creativity,
    "threat": threat,
    "ict_index": ictIndex,
    "influence_rank": influenceRank,
    "influence_rank_type": influenceRankType,
    "creativity_rank": creativityRank,
    "creativity_rank_type": creativityRankType,
    "threat_rank": threatRank,
    "threat_rank_type": threatRankType,
    "ict_index_rank": ictIndexRank,
    "ict_index_rank_type": ictIndexRankType,
    "corners_and_indirect_freekicks_order": cornersAndIndirectFreekicksOrder == null ? null : cornersAndIndirectFreekicksOrder,
    "corners_and_indirect_freekicks_text": cornersAndIndirectFreekicksText,
    "direct_freekicks_order": directFreekicksOrder == null ? null : directFreekicksOrder,
    "direct_freekicks_text": directFreekicksText,
    "penalties_order": penaltiesOrder == null ? null : penaltiesOrder,
    "penalties_text": penaltiesText,
  };
}

enum Status { D, U, A, S, I, N }

final statusValues = EnumValues({
  "a": Status.A,
  "d": Status.D,
  "i": Status.I,
  "n": Status.N,
  "s": Status.S,
  "u": Status.U
},
    {
      Status.A:"a",
      Status.D:"d",
      Status.I: "i",
      Status.N:"n",
      Status.S:"s",
      Status.U:"u"
    }
);

class Event {
  Event({
    required this.id,
    required this.name,
    required this.deadlineTime,
    required this.averageEntryScore,
    required this.finished,
    required this.dataChecked,
    required this.highestScoringEntry,
    required this.deadlineTimeEpoch,
    required this.deadlineTimeGameOffset,
    required this.highestScore,
    required this.isPrevious,
    required this.isCurrent,
    required this.isNext,
    required this.cupLeaguesCreated,
    required this.h2HKoMatchesCreated,
    required this.chipPlays,
    required this.mostSelected,
    required this.mostTransferredIn,
    required this.topElement,
    required this.topElementInfo,
    required this.transfersMade,
    required this.mostCaptained,
    required this.mostViceCaptained,
  });

  int id;
  String name;
  DateTime deadlineTime;
  int averageEntryScore;
  bool finished;
  bool dataChecked;
  int highestScoringEntry;
  int deadlineTimeEpoch;
  int deadlineTimeGameOffset;
  int highestScore;
  bool isPrevious;
  bool isCurrent;
  bool isNext;
  bool cupLeaguesCreated;
  bool h2HKoMatchesCreated;
  List<ChipPlay> chipPlays;
  int mostSelected;
  int mostTransferredIn;
  int topElement;
  TopElementInfo? topElementInfo;
  int transfersMade;
  int mostCaptained;
  int mostViceCaptained;

  factory Event.fromJson(Map<String, dynamic> json) => Event(
    id: json["id"],
    name: json["name"],
    deadlineTime: DateTime.parse(json["deadline_time"]),
    averageEntryScore: json["average_entry_score"],
    finished: json["finished"],
    dataChecked: json["data_checked"],
    highestScoringEntry: json["highest_scoring_entry"] == null ? 0 : json["highest_scoring_entry"],
    deadlineTimeEpoch: json["deadline_time_epoch"],
    deadlineTimeGameOffset: json["deadline_time_game_offset"],
    highestScore: json["highest_score"] == null ? 0 : json["highest_score"],
    isPrevious: json["is_previous"],
    isCurrent: json["is_current"],
    isNext: json["is_next"],
    cupLeaguesCreated: json["cup_leagues_created"],
    h2HKoMatchesCreated: json["h2h_ko_matches_created"],
    chipPlays: List<ChipPlay>.from(json["chip_plays"].map((x) => ChipPlay.fromJson(x))),
    mostSelected: json["most_selected"] == null ? 0 : json["most_selected"],
    mostTransferredIn: json["most_transferred_in"] == null ? 0 : json["most_transferred_in"],
    topElement: json["top_element"] == null ? 0 : json["top_element"],
    topElementInfo: json["top_element_info"] == null ? null : TopElementInfo.fromJson(json["top_element_info"]),
    transfersMade: json["transfers_made"],
    mostCaptained: json["most_captained"] == null ? 0 : json["most_captained"],
    mostViceCaptained: json["most_vice_captained"] == null ? 0 : json["most_vice_captained"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "deadline_time": deadlineTime.toIso8601String(),
    "average_entry_score": averageEntryScore,
    "finished": finished,
    "data_checked": dataChecked,
    "highest_scoring_entry": highestScoringEntry == null ? null : highestScoringEntry,
    "deadline_time_epoch": deadlineTimeEpoch,
    "deadline_time_game_offset": deadlineTimeGameOffset,
    "highest_score": highestScore == null ? null : highestScore,
    "is_previous": isPrevious,
    "is_current": isCurrent,
    "is_next": isNext,
    "cup_leagues_created": cupLeaguesCreated,
    "h2h_ko_matches_created": h2HKoMatchesCreated,
    "chip_plays": List<dynamic>.from(chipPlays.map((x) => x.toJson())),
    "most_selected": mostSelected == null ? null : mostSelected,
    "most_transferred_in": mostTransferredIn == null ? null : mostTransferredIn,
    "top_element": topElement == null ? null : topElement,
    "top_element_info": topElementInfo == null ? null : topElementInfo!.toJson(),
    "transfers_made": transfersMade,
    "most_captained": mostCaptained == null ? null : mostCaptained,
    "most_vice_captained": mostViceCaptained == null ? null : mostViceCaptained,
  };
}

class ChipPlay {
  ChipPlay({
    required this.chipName,
    required this.numPlayed,
  });

  ChipName? chipName;
  int numPlayed;

  factory ChipPlay.fromJson(Map<String, dynamic> json) => ChipPlay(
    chipName: chipNameValues.map[json["chip_name"]],
    numPlayed: json["num_played"],
  );

  Map<String, dynamic> toJson() => {
    "chip_name": chipNameValues.reverse[chipName],
    "num_played": numPlayed,
  };
}

enum ChipName { BBOOST, THE_3_XC, FREEHIT, WILDCARD }

final chipNameValues = EnumValues({
  "bboost": ChipName.BBOOST,
  "freehit": ChipName.FREEHIT,
  "3xc": ChipName.THE_3_XC,
  "wildcard": ChipName.WILDCARD,
},
    {
      ChipName.BBOOST:"bbost",
      ChipName.FREEHIT:"freehit",
      ChipName.THE_3_XC:"3xc",
      ChipName.WILDCARD:"wildcard"
    }


);

class TopElementInfo {
  TopElementInfo({
    required this.id,
    required this.points,
  });

  int id;
  int points;

  factory TopElementInfo.fromJson(Map<String, dynamic> json) => TopElementInfo(
    id: json["id"],
    points: json["points"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "points": points,
  };
}

class GameSettings {
  GameSettings({
    required this.leagueJoinPrivateMax,
    required this.leagueJoinPublicMax,
    required this.leagueMaxSizePublicClassic,
    required this.leagueMaxSizePublicH2H,
    required this.leagueMaxSizePrivateH2H,
    required this.leagueMaxKoRoundsPrivateH2H,
    required this.leaguePrefixPublic,
    required this.leaguePointsH2HWin,
    required this.leaguePointsH2HLose,
    required this.leaguePointsH2HDraw,
    required this.leagueKoFirstInsteadOfRandom,
    required this.cupStartEventId,
    required this.cupStopEventId,
    required this.cupQualifyingMethod,
    required this.cupType,
    required this.squadSquadplay,
    required this.squadSquadsize,
    required this.squadTeamLimit,
    required this.squadTotalSpend,
    required this.uiCurrencyMultiplier,
    required this.uiUseSpecialShirts,
    required this.uiSpecialShirtExclusions,
    required this.statsFormDays,
    required this.sysViceCaptainEnabled,
    required this.transfersCap,
    required this.transfersSellOnFee,
    required this.leagueH2HTiebreakStats,
    required this.timezone,
  });

  int leagueJoinPrivateMax;
  int leagueJoinPublicMax;
  int leagueMaxSizePublicClassic;
  int leagueMaxSizePublicH2H;
  int leagueMaxSizePrivateH2H;
  int leagueMaxKoRoundsPrivateH2H;
  String leaguePrefixPublic;
  int leaguePointsH2HWin;
  int leaguePointsH2HLose;
  int leaguePointsH2HDraw;
  bool leagueKoFirstInsteadOfRandom;
  dynamic cupStartEventId;
  dynamic cupStopEventId;
  dynamic cupQualifyingMethod;
  dynamic cupType;
  int squadSquadplay;
  int squadSquadsize;
  int squadTeamLimit;
  int squadTotalSpend;
  int uiCurrencyMultiplier;
  bool uiUseSpecialShirts;
  List<dynamic> uiSpecialShirtExclusions;
  int statsFormDays;
  bool sysViceCaptainEnabled;
  int transfersCap;
  double transfersSellOnFee;
  List<String> leagueH2HTiebreakStats;
  String timezone;

  factory GameSettings.fromJson(Map<String, dynamic> json) => GameSettings(
    leagueJoinPrivateMax: json["league_join_private_max"],
    leagueJoinPublicMax: json["league_join_public_max"],
    leagueMaxSizePublicClassic: json["league_max_size_public_classic"],
    leagueMaxSizePublicH2H: json["league_max_size_public_h2h"],
    leagueMaxSizePrivateH2H: json["league_max_size_private_h2h"],
    leagueMaxKoRoundsPrivateH2H: json["league_max_ko_rounds_private_h2h"],
    leaguePrefixPublic: json["league_prefix_public"],
    leaguePointsH2HWin: json["league_points_h2h_win"],
    leaguePointsH2HLose: json["league_points_h2h_lose"],
    leaguePointsH2HDraw: json["league_points_h2h_draw"],
    leagueKoFirstInsteadOfRandom: json["league_ko_first_instead_of_random"],
    cupStartEventId: json["cup_start_event_id"],
    cupStopEventId: json["cup_stop_event_id"],
    cupQualifyingMethod: json["cup_qualifying_method"],
    cupType: json["cup_type"],
    squadSquadplay: json["squad_squadplay"],
    squadSquadsize: json["squad_squadsize"],
    squadTeamLimit: json["squad_team_limit"],
    squadTotalSpend: json["squad_total_spend"],
    uiCurrencyMultiplier: json["ui_currency_multiplier"],
    uiUseSpecialShirts: json["ui_use_special_shirts"],
    uiSpecialShirtExclusions: List<dynamic>.from(json["ui_special_shirt_exclusions"].map((x) => x)),
    statsFormDays: json["stats_form_days"],
    sysViceCaptainEnabled: json["sys_vice_captain_enabled"],
    transfersCap: json["transfers_cap"],
    transfersSellOnFee: json["transfers_sell_on_fee"].toDouble(),
    leagueH2HTiebreakStats: List<String>.from(json["league_h2h_tiebreak_stats"].map((x) => x)),
    timezone: json["timezone"],
  );

  Map<String, dynamic> toJson() => {
    "league_join_private_max": leagueJoinPrivateMax,
    "league_join_public_max": leagueJoinPublicMax,
    "league_max_size_public_classic": leagueMaxSizePublicClassic,
    "league_max_size_public_h2h": leagueMaxSizePublicH2H,
    "league_max_size_private_h2h": leagueMaxSizePrivateH2H,
    "league_max_ko_rounds_private_h2h": leagueMaxKoRoundsPrivateH2H,
    "league_prefix_public": leaguePrefixPublic,
    "league_points_h2h_win": leaguePointsH2HWin,
    "league_points_h2h_lose": leaguePointsH2HLose,
    "league_points_h2h_draw": leaguePointsH2HDraw,
    "league_ko_first_instead_of_random": leagueKoFirstInsteadOfRandom,
    "cup_start_event_id": cupStartEventId,
    "cup_stop_event_id": cupStopEventId,
    "cup_qualifying_method": cupQualifyingMethod,
    "cup_type": cupType,
    "squad_squadplay": squadSquadplay,
    "squad_squadsize": squadSquadsize,
    "squad_team_limit": squadTeamLimit,
    "squad_total_spend": squadTotalSpend,
    "ui_currency_multiplier": uiCurrencyMultiplier,
    "ui_use_special_shirts": uiUseSpecialShirts,
    "ui_special_shirt_exclusions": List<dynamic>.from(uiSpecialShirtExclusions.map((x) => x)),
    "stats_form_days": statsFormDays,
    "sys_vice_captain_enabled": sysViceCaptainEnabled,
    "transfers_cap": transfersCap,
    "transfers_sell_on_fee": transfersSellOnFee,
    "league_h2h_tiebreak_stats": List<dynamic>.from(leagueH2HTiebreakStats.map((x) => x)),
    "timezone": timezone,
  };
}

class Phase {
  Phase({
    required this.id,
    required this.name,
    required this.startEvent,
    required this.stopEvent,
  });

  int id;
  String name;
  int startEvent;
  int stopEvent;

  factory Phase.fromJson(Map<String, dynamic> json) => Phase(
    id: json["id"],
    name: json["name"],
    startEvent: json["start_event"],
    stopEvent: json["stop_event"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "start_event": startEvent,
    "stop_event": stopEvent,
  };
}

class Team {
  Team({
    required this.code,
    required this.draw,
    required this.form,
    required this.id,
    required this.loss,
    required this.name,
    required this.played,
    required this.points,
    required this.position,
    required this.shortName,
    required this.strength,
    required this.teamDivision,
    required this.unavailable,
    required this.win,
    required this.strengthOverallHome,
    required this.strengthOverallAway,
    required this.strengthAttackHome,
    required this.strengthAttackAway,
    required this.strengthDefenceHome,
    required this.strengthDefenceAway,
    required this.pulseId,
  });

  int code;
  int draw;
  dynamic form;
  int id;
  int loss;
  String name;
  int played;
  int points;
  int position;
  String shortName;
  int strength;
  dynamic teamDivision;
  bool unavailable;
  int win;
  int strengthOverallHome;
  int strengthOverallAway;
  int strengthAttackHome;
  int strengthAttackAway;
  int strengthDefenceHome;
  int strengthDefenceAway;
  int pulseId;

  factory Team.fromJson(Map<String, dynamic> json) => Team(
    code: json["code"],
    draw: json["draw"],
    form: json["form"],
    id: json["id"],
    loss: json["loss"],
    name: json["name"],
    played: json["played"],
    points: json["points"],
    position: json["position"],
    shortName: json["short_name"],
    strength: json["strength"],
    teamDivision: json["team_division"],
    unavailable: json["unavailable"],
    win: json["win"],
    strengthOverallHome: json["strength_overall_home"],
    strengthOverallAway: json["strength_overall_away"],
    strengthAttackHome: json["strength_attack_home"],
    strengthAttackAway: json["strength_attack_away"],
    strengthDefenceHome: json["strength_defence_home"],
    strengthDefenceAway: json["strength_defence_away"],
    pulseId: json["pulse_id"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "draw": draw,
    "form": form,
    "id": id,
    "loss": loss,
    "name": name,
    "played": played,
    "points": points,
    "position": position,
    "short_name": shortName,
    "strength": strength,
    "team_division": teamDivision,
    "unavailable": unavailable,
    "win": win,
    "strength_overall_home": strengthOverallHome,
    "strength_overall_away": strengthOverallAway,
    "strength_attack_home": strengthAttackHome,
    "strength_attack_away": strengthAttackAway,
    "strength_defence_home": strengthDefenceHome,
    "strength_defence_away": strengthDefenceAway,
    "pulse_id": pulseId,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map,this.reverseMap);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
