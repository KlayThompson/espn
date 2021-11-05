class Scores {
  List<ScoreContent>? scoreContent;

  Scores({this.scoreContent});

  Scores.fromJson(Map<String, dynamic> json) {
    if (json['content'] != null) {
      scoreContent = <ScoreContent>[];
      json['content'].forEach((v) {
        scoreContent!.add(ScoreContent.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (scoreContent != null) {
      data['content'] = scoreContent!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ScoreContent {
  List<ScoreItems>? scoreItems;
  ScoreItemHeader? header;
  String? type;

  ScoreContent({this.scoreItems, this.header, this.type});

  ScoreContent.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      scoreItems = <ScoreItems>[];
      json['items'].forEach((v) {
        scoreItems!.add(ScoreItems.fromJson(v));
      });
    }
    header = json['header'] != null ? ScoreItemHeader?.fromJson(json['header']) : null;
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (scoreItems != null) {
      data['items'] = scoreItems!.map((v) => v.toJson()).toList();
    }
    if (header != null) {
      data['header'] = header!.toJson();
    }
    data['type'] = type;
    return data;
  }
}

class ScoreItems {
  String? sportName;
  String? type;
  String? sportUID;
  String? leagueUID;
  String? competitionUID;
  String? gameState;
  String? gameDate;
  String? leagueName;
  int? gameId;
  String? leagueAbbreviation;
  String? teamOneName;
  String? teamOneUID;
  String? teamOneColor;
  String? teamOneLogoURL;
  String? teamOneLogoURLDark;
  String? teamOneAbbreviation;
  String? teamOneScore;
  bool? teamOnePossession;
  String? teamOneAction;
  String? teamTwoName;
  String? teamTwoUID;
  String? teamTwoColor;
  String? teamTwoLogoURL;
  String? teamTwoLogoURLDark;
  String? teamTwoAbbreviation;
  String? teamTwoScore;
  bool? teamTwoPossession;
  String? teamTwoAction;
  String? headline;
  String? statusTextOne;
  String? statusTextThree;
  String? statusTextTwo;
  String? deepLinkURL;
  String? eventTv;
  int? priority;
  ScoresVenue? venue;
  ScoreItemsAnalytics? scoreItemsAnalytics;
  List<ScoresButtons>? buttons;
  String? webviewURL;
  ScoresItemShare? share;
  List<AiringBlackouts>? airingBlackouts;
  ScoresOverrides? overrides;
  String? teamTwoRank;
  String? dateFormatString;
  String? timeFormatString;
  String? weekFormatString;
  String? statusTextOneFormat;
  String? statusTextTwoFormat;
  String? teamOneRecord;
  String? teamTwoRecord;
  String? teamOneRank;
  ScoresSituation? situation;
  bool? teamOneWinner;
  bool? teamTwoWinner;
  String? eventName;
  String? matchDate;
  int? matchNumber;
  String? statusTextZeroFormat;
  String? statusText;
  String? playerOneName;
  String? playerOneUID;
  String? playerOneMoneyLine;
  String? playerOneRecord;
  String? playerOneLastName;
  String? playerOneHeadshot;
  String? playerOneLogoURL;
  bool? playerOneWinner;
  String? playerOneColor;
  String? playerTwoName;
  String? playerTwoUID;
  String? playerTwoMoneyLine;
  String? playerTwoRecord;
  String? playerTwoLastName;
  String? playerTwoHeadshot;
  String? playerTwoLogoURL;
  bool? playerTwoWinner;
  String? playerTwoColor;
  String? note;
  String? dateRange;
  List<String>? columnHeaders;
  String? scoreOneLabel;
  String? scoreTwoLabel;
  List<ScoresPlayers>? players;
  String? detailTextOne;
  String? detailTextThree;
  String? detailTextFour;

  ScoreItems(
      {this.sportName,
      this.type,
      this.sportUID,
      this.leagueUID,
      this.competitionUID,
      this.gameState,
      this.gameDate,
      this.leagueName,
      this.gameId,
      this.leagueAbbreviation,
      this.teamOneName,
      this.teamOneUID,
      this.teamOneColor,
      this.teamOneLogoURL,
      this.teamOneLogoURLDark,
      this.teamOneAbbreviation,
      this.teamOneScore,
      this.teamOnePossession,
      this.teamOneAction,
      this.teamTwoName,
      this.teamTwoUID,
      this.teamTwoColor,
      this.teamTwoLogoURL,
      this.teamTwoLogoURLDark,
      this.teamTwoAbbreviation,
      this.teamTwoScore,
      this.teamTwoPossession,
      this.teamTwoAction,
      this.headline,
      this.statusTextOne,
      this.statusTextThree,
      this.statusTextTwo,
      this.deepLinkURL,
      this.eventTv,
      this.priority,
      this.venue,
      this.scoreItemsAnalytics,
      this.buttons,
      this.webviewURL,
      this.share,
      this.airingBlackouts,
      this.overrides,
      this.teamTwoRank,
      this.dateFormatString,
      this.timeFormatString,
      this.weekFormatString,
      this.statusTextOneFormat,
      this.statusTextTwoFormat,
      this.teamOneRecord,
      this.teamTwoRecord,
      this.teamOneRank,
      this.situation,
      this.teamOneWinner,
      this.teamTwoWinner,
      this.eventName,
      this.matchDate,
      this.matchNumber,
      this.statusTextZeroFormat,
      this.statusText,
      this.playerOneName,
      this.playerOneUID,
      this.playerOneMoneyLine,
      this.playerOneRecord,
      this.playerOneLastName,
      this.playerOneHeadshot,
      this.playerOneLogoURL,
      this.playerOneWinner,
      this.playerOneColor,
      this.playerTwoName,
      this.playerTwoUID,
      this.playerTwoMoneyLine,
      this.playerTwoRecord,
      this.playerTwoLastName,
      this.playerTwoHeadshot,
      this.playerTwoLogoURL,
      this.playerTwoWinner,
      this.playerTwoColor,
      this.note,
      this.dateRange,
      this.columnHeaders,
      this.scoreOneLabel,
      this.scoreTwoLabel,
      this.players,
      this.detailTextOne,
      this.detailTextThree,
      this.detailTextFour});

  ScoreItems.fromJson(Map<String, dynamic> json) {
    sportName = json['sportName'];
    type = json['type'];
    sportUID = json['sportUID'];
    leagueUID = json['leagueUID'];
    competitionUID = json['competitionUID'];
    gameState = json['gameState'];
    gameDate = json['gameDate'];
    leagueName = json['leagueName'];
    gameId = json['gameId'];
    leagueAbbreviation = json['leagueAbbreviation'];
    teamOneName = json['teamOneName'];
    teamOneUID = json['teamOneUID'];
    teamOneColor = json['teamOneColor'];
    teamOneLogoURL = json['teamOneLogoURL'];
    teamOneLogoURLDark = json['teamOneLogoURLDark'];
    teamOneAbbreviation = json['teamOneAbbreviation'];
    teamOneScore = json['teamOneScore'];
    teamOnePossession = json['teamOnePossession'];
    teamOneAction = json['teamOneAction'];
    teamTwoName = json['teamTwoName'];
    teamTwoUID = json['teamTwoUID'];
    teamTwoColor = json['teamTwoColor'];
    teamTwoLogoURL = json['teamTwoLogoURL'];
    teamTwoLogoURLDark = json['teamTwoLogoURLDark'];
    teamTwoAbbreviation = json['teamTwoAbbreviation'];
    teamTwoScore = json['teamTwoScore'];
    teamTwoPossession = json['teamTwoPossession'];
    teamTwoAction = json['teamTwoAction'];
    headline = json['headline'];
    statusTextOne = json['statusTextOne'];
    statusTextThree = json['statusTextThree'];
    statusTextTwo = json['statusTextTwo'];
    deepLinkURL = json['deepLinkURL'];
    eventTv = json['eventTv'];
    priority = json['priority'];
    venue = json['venue'] != null ? ScoresVenue?.fromJson(json['venue']) : null;
    scoreItemsAnalytics = json['analytics'] != null
        ? ScoreItemsAnalytics?.fromJson(json['analytics'])
        : null;
    if (json['buttons'] != null) {
      buttons = <ScoresButtons>[];
      json['buttons'].forEach((v) {
        buttons!.add(ScoresButtons.fromJson(v));
      });
    }
    webviewURL = json['webviewURL'];
    share = json['share'] != null ? ScoresItemShare?.fromJson(json['share']) : null;
    if (json['airingBlackouts'] != null) {
      airingBlackouts = <AiringBlackouts>[];
      json['airingBlackouts'].forEach((v) {
        airingBlackouts!.add(AiringBlackouts.fromJson(v));
      });
    }
    overrides =
        json['overrides'] != null ? ScoresOverrides?.fromJson(json['overrides']) : null;
    teamTwoRank = json['teamTwoRank'];
    dateFormatString = json['dateFormatString'];
    timeFormatString = json['timeFormatString'];
    weekFormatString = json['weekFormatString'];
    statusTextOneFormat = json['statusTextOneFormat'];
    statusTextTwoFormat = json['statusTextTwoFormat'];
    teamOneRecord = json['teamOneRecord'];
    teamTwoRecord = json['teamTwoRecord'];
    teamOneRank = json['teamOneRank'];
    situation =
        json['situation'] != null ? ScoresSituation?.fromJson(json['situation']) : null;
    teamOneWinner = json['teamOneWinner'];
    teamTwoWinner = json['teamTwoWinner'];
    eventName = json['eventName'];
    matchDate = json['matchDate'];
    matchNumber = json['matchNumber'];
    statusTextZeroFormat = json['statusTextZeroFormat'];
    statusText = json['statusText'];
    playerOneName = json['playerOneName'];
    playerOneUID = json['playerOneUID'];
    playerOneMoneyLine = json['playerOneMoneyLine'];
    playerOneRecord = json['playerOneRecord'];
    playerOneLastName = json['playerOneLastName'];
    playerOneHeadshot = json['playerOneHeadshot'];
    playerOneLogoURL = json['playerOneLogoURL'];
    playerOneWinner = json['playerOneWinner'];
    playerOneColor = json['playerOneColor'];
    playerTwoName = json['playerTwoName'];
    playerTwoUID = json['playerTwoUID'];
    playerTwoMoneyLine = json['playerTwoMoneyLine'];
    playerTwoRecord = json['playerTwoRecord'];
    playerTwoLastName = json['playerTwoLastName'];
    playerTwoHeadshot = json['playerTwoHeadshot'];
    playerTwoLogoURL = json['playerTwoLogoURL'];
    playerTwoWinner = json['playerTwoWinner'];
    playerTwoColor = json['playerTwoColor'];
    note = json['note'];
    dateRange = json['dateRange'];
    columnHeaders = json['columnHeaders'].cast<String>();
    scoreOneLabel = json['scoreOneLabel'];
    scoreTwoLabel = json['scoreTwoLabel'];
    if (json['players'] != null) {
      players = <ScoresPlayers>[];
      json['players'].forEach((v) {
        players!.add(ScoresPlayers.fromJson(v));
      });
    }
    detailTextOne = json['detailTextOne'];
    detailTextThree = json['detailTextThree'];
    detailTextFour = json['detailTextFour'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['sportName'] = sportName;
    data['type'] = type;
    data['sportUID'] = sportUID;
    data['leagueUID'] = leagueUID;
    data['competitionUID'] = competitionUID;
    data['gameState'] = gameState;
    data['gameDate'] = gameDate;
    data['leagueName'] = leagueName;
    data['gameId'] = gameId;
    data['leagueAbbreviation'] = leagueAbbreviation;
    data['teamOneName'] = teamOneName;
    data['teamOneUID'] = teamOneUID;
    data['teamOneColor'] = teamOneColor;
    data['teamOneLogoURL'] = teamOneLogoURL;
    data['teamOneLogoURLDark'] = teamOneLogoURLDark;
    data['teamOneAbbreviation'] = teamOneAbbreviation;
    data['teamOneScore'] = teamOneScore;
    data['teamOnePossession'] = teamOnePossession;
    data['teamOneAction'] = teamOneAction;
    data['teamTwoName'] = teamTwoName;
    data['teamTwoUID'] = teamTwoUID;
    data['teamTwoColor'] = teamTwoColor;
    data['teamTwoLogoURL'] = teamTwoLogoURL;
    data['teamTwoLogoURLDark'] = teamTwoLogoURLDark;
    data['teamTwoAbbreviation'] = teamTwoAbbreviation;
    data['teamTwoScore'] = teamTwoScore;
    data['teamTwoPossession'] = teamTwoPossession;
    data['teamTwoAction'] = teamTwoAction;
    data['headline'] = headline;
    data['statusTextOne'] = statusTextOne;
    data['statusTextThree'] = statusTextThree;
    data['statusTextTwo'] = statusTextTwo;
    data['deepLinkURL'] = deepLinkURL;
    data['eventTv'] = eventTv;
    data['priority'] = priority;
    if (venue != null) {
      data['venue'] = venue!.toJson();
    }
    if (scoreItemsAnalytics != null) {
      data['analytics'] = scoreItemsAnalytics!.toJson();
    }
    if (buttons != null) {
      data['buttons'] = buttons!.map((v) => v.toJson()).toList();
    }
    data['webviewURL'] = webviewURL;
    if (share != null) {
      data['share'] = share!.toJson();
    }
    if (airingBlackouts != null) {
      data['airingBlackouts'] = airingBlackouts!.map((v) => v.toJson()).toList();
    }
    if (overrides != null) {
      data['overrides'] = overrides!.toJson();
    }
    data['teamTwoRank'] = teamTwoRank;
    data['dateFormatString'] = dateFormatString;
    data['timeFormatString'] = timeFormatString;
    data['weekFormatString'] = weekFormatString;
    data['statusTextOneFormat'] = statusTextOneFormat;
    data['statusTextTwoFormat'] = statusTextTwoFormat;
    data['teamOneRecord'] = teamOneRecord;
    data['teamTwoRecord'] = teamTwoRecord;
    data['teamOneRank'] = teamOneRank;
    if (situation != null) {
      data['situation'] = situation!.toJson();
    }
    data['teamOneWinner'] = teamOneWinner;
    data['teamTwoWinner'] = teamTwoWinner;
    data['eventName'] = eventName;
    data['matchDate'] = matchDate;
    data['matchNumber'] = matchNumber;
    data['statusTextZeroFormat'] = statusTextZeroFormat;
    data['statusText'] = statusText;
    data['playerOneName'] = playerOneName;
    data['playerOneUID'] = playerOneUID;
    data['playerOneMoneyLine'] = playerOneMoneyLine;
    data['playerOneRecord'] = playerOneRecord;
    data['playerOneLastName'] = playerOneLastName;
    data['playerOneHeadshot'] = playerOneHeadshot;
    data['playerOneLogoURL'] = playerOneLogoURL;
    data['playerOneWinner'] = playerOneWinner;
    data['playerOneColor'] = playerOneColor;
    data['playerTwoName'] = playerTwoName;
    data['playerTwoUID'] = playerTwoUID;
    data['playerTwoMoneyLine'] = playerTwoMoneyLine;
    data['playerTwoRecord'] = playerTwoRecord;
    data['playerTwoLastName'] = playerTwoLastName;
    data['playerTwoHeadshot'] = playerTwoHeadshot;
    data['playerTwoLogoURL'] = playerTwoLogoURL;
    data['playerTwoWinner'] = playerTwoWinner;
    data['playerTwoColor'] = playerTwoColor;
    data['note'] = note;
    data['dateRange'] = dateRange;
    data['columnHeaders'] = columnHeaders;
    data['scoreOneLabel'] = scoreOneLabel;
    data['scoreTwoLabel'] = scoreTwoLabel;
    if (players != null) {
      data['players'] = players!.map((v) => v.toJson()).toList();
    }
    data['detailTextOne'] = detailTextOne;
    data['detailTextThree'] = detailTextThree;
    data['detailTextFour'] = detailTextFour;
    return data;
  }
}

class ScoresVenue {
  String? name;
  String? location;

  ScoresVenue({this.name, this.location});

  ScoresVenue.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    location = json['location'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['location'] = location;
    return data;
  }
}

class ScoreItemsAnalytics {
  String? contentType;
  String? contentId;
  String? sportName;
  int? gameId;
  String? eventName;
  String? presentationType;
  String? personalizationReason;

  ScoreItemsAnalytics(
      {this.contentType,
      this.contentId,
      this.sportName,
      this.gameId,
      this.eventName,
      this.presentationType,
      this.personalizationReason});

  ScoreItemsAnalytics.fromJson(Map<String, dynamic> json) {
    contentType = json['contentType'];
    contentId = json['contentId'];
    sportName = json['sportName'];
    gameId = json['gameId'];
    eventName = json['eventName'];
    presentationType = json['presentationType'];
    personalizationReason = json['personalizationReason'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['contentType'] = contentType;
    data['contentId'] = contentId;
    data['sportName'] = sportName;
    data['gameId'] = gameId;
    data['eventName'] = eventName;
    data['presentationType'] = presentationType;
    data['personalizationReason'] = personalizationReason;
    return data;
  }
}

class ScoresButtons {
  String? text;
  String? action;
  List<String>? contentURLs;
  String? type;

  ScoresButtons({this.text, this.action, this.contentURLs, this.type});

  ScoresButtons.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    action = json['action'];
    contentURLs = json['contentURLs'].cast<String>();
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['text'] = text;
    data['action'] = action;
    data['contentURLs'] = contentURLs;
    data['type'] = type;
    return data;
  }
}

class ScoresItemShare {
  String? headline;
  String? description;
  ScoresItemShareLink? link;

  ScoresItemShare({this.headline, this.description, this.link});

  ScoresItemShare.fromJson(Map<String, dynamic> json) {
    headline = json['headline'];
    description = json['description'];
    link = json['link'] != null ? ScoresItemShareLink?.fromJson(json['link']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['headline'] = headline;
    data['description'] = description;
    if (link != null) {
      data['link'] = link!.toJson();
    }
    return data;
  }
}

class ScoresItemShareLink {
  ScoresItemShareLinkAction? action;
  String? text;

  ScoresItemShareLink({this.action, this.text});

  ScoresItemShareLink.fromJson(Map<String, dynamic> json) {
    action = json['action'] != null ? ScoresItemShareLinkAction?.fromJson(json['action']) : null;
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (action != null) {
      data['action'] = action!.toJson();
    }
    data['text'] = text;
    return data;
  }
}

class ScoresItemShareLinkAction {
  String? url;
  String? type;
  String? fullURL;

  ScoresItemShareLinkAction({this.url, this.type, this.fullURL});

  ScoresItemShareLinkAction.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    type = json['type'];
    fullURL = json['fullURL'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['url'] = url;
    data['type'] = type;
    data['fullURL'] = fullURL;
    return data;
  }
}

class AiringBlackouts {
  List<String>? name;
  List<Blackouts>? blackouts;

  AiringBlackouts({this.name, this.blackouts});

  AiringBlackouts.fromJson(Map<String, dynamic> json) {
    name = json['name'].cast<String>();
    if (json['blackouts'] != null) {
      blackouts = <Blackouts>[];
      json['blackouts'].forEach((v) {
        blackouts!.add(Blackouts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    if (blackouts != null) {
      data['blackouts'] = blackouts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Blackouts {
  List<String>? zip;
  String? match;

  Blackouts({this.zip, this.match});

  Blackouts.fromJson(Map<String, dynamic> json) {
    zip = json['zip'].cast<String>();
    match = json['match'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['zip'] = zip;
    data['match'] = match;
    return data;
  }
}

class ScoresOverrides {
  GameDetails? gameDetails;
  GameBlockHeader? gameBlockHeader;

  ScoresOverrides({this.gameDetails, this.gameBlockHeader});

  ScoresOverrides.fromJson(Map<String, dynamic> json) {
    gameDetails = json['gameDetails'] != null
        ? GameDetails?.fromJson(json['gameDetails'])
        : null;
    gameBlockHeader = json['gameBlockHeader'] != null
        ? GameBlockHeader?.fromJson(json['gameBlockHeader'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (gameDetails != null) {
      data['gameDetails'] = gameDetails!.toJson();
    }
    if (gameBlockHeader != null) {
      data['gameBlockHeader'] = gameBlockHeader!.toJson();
    }
    return data;
  }
}

class GameDetails {
  String? note;
  String? statusTextTwo;
  List<ScoresButtons>? buttons;
  String? statusTextThree;

  GameDetails(
      {this.note, this.statusTextTwo, this.buttons, this.statusTextThree});

  GameDetails.fromJson(Map<String, dynamic> json) {
    note = json['note'];
    statusTextTwo = json['statusTextTwo'];
    if (json['buttons'] != null) {
      buttons = <ScoresButtons>[];
      json['buttons'].forEach((v) {
        buttons!.add(ScoresButtons.fromJson(v));
      });
    }
    statusTextThree = json['statusTextThree'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['note'] = note;
    data['statusTextTwo'] = statusTextTwo;
    if (buttons != null) {
      data['buttons'] = buttons!.map((v) => v.toJson()).toList();
    }
    data['statusTextThree'] = statusTextThree;
    return data;
  }
}

class GameBlockHeader {
  String? statusTextTwo;

  GameBlockHeader({this.statusTextTwo});

  GameBlockHeader.fromJson(Map<String, dynamic> json) {
    statusTextTwo = json['statusTextTwo'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['statusTextTwo'] = statusTextTwo;
    return data;
  }
}

class ScoresSituation {
  bool? onFirst;
  bool? onSecond;

  ScoresSituation({this.onFirst, this.onSecond});

  ScoresSituation.fromJson(Map<String, dynamic> json) {
    onFirst = json['onFirst'];
    onSecond = json['onSecond'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['onFirst'] = onFirst;
    data['onSecond'] = onSecond;
    return data;
  }
}

class ScoresPlayers {
  String? playerName;
  String? playerRank;
  String? playerLogoURL;
  String? playerScoreOneValue;
  String? playerScoreTwoValue;

  ScoresPlayers(
      {this.playerName,
      this.playerRank,
      this.playerLogoURL,
      this.playerScoreOneValue,
      this.playerScoreTwoValue});

  ScoresPlayers.fromJson(Map<String, dynamic> json) {
    playerName = json['playerName'];
    playerRank = json['playerRank'];
    playerLogoURL = json['playerLogoURL'];
    playerScoreOneValue = json['playerScoreOneValue'];
    playerScoreTwoValue = json['playerScoreTwoValue'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['playerName'] = playerName;
    data['playerRank'] = playerRank;
    data['playerLogoURL'] = playerLogoURL;
    data['playerScoreOneValue'] = playerScoreOneValue;
    data['playerScoreTwoValue'] = playerScoreTwoValue;
    return data;
  }
}

class ScoreItemHeader {
  String? label;
  String? action;
  String? sublabel;

  ScoreItemHeader({this.label, this.action, this.sublabel});

  ScoreItemHeader.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    action = json['action'];
    sublabel = json['sublabel'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['label'] = label;
    data['action'] = action;
    data['sublabel'] = sublabel;
    return data;
  }
}
