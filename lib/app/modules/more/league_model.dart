class League {
  String? teamSearchURL;
  String? sportAndLeagueSearchURL;
  String? maxSportsSelectionLimit;
  String? anonServerSyncRetryLimit;
  int? currentTrigger;
  List<FavoriteLeagues>? favoriteLeagues;

  League(
      {this.teamSearchURL,
      this.sportAndLeagueSearchURL,
      this.maxSportsSelectionLimit,
      this.anonServerSyncRetryLimit,
      this.currentTrigger,
      this.favoriteLeagues});

  League.fromJson(Map<String, dynamic> json) {
    teamSearchURL = json['teamSearchURL'];
    sportAndLeagueSearchURL = json['sportAndLeagueSearchURL'];
    maxSportsSelectionLimit = json['maxSportsSelectionLimit'];
    anonServerSyncRetryLimit = json['anonServerSyncRetryLimit'];
    currentTrigger = json['currentTrigger'];
    if (json['favoriteLeagues'] != null) {
      favoriteLeagues = <FavoriteLeagues>[];
      json['favoriteLeagues'].forEach((v) {
        favoriteLeagues!.add(FavoriteLeagues.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['teamSearchURL'] = teamSearchURL;
    data['sportAndLeagueSearchURL'] = sportAndLeagueSearchURL;
    data['maxSportsSelectionLimit'] = maxSportsSelectionLimit;
    data['anonServerSyncRetryLimit'] = anonServerSyncRetryLimit;
    data['currentTrigger'] = currentTrigger;
    if (favoriteLeagues != null) {
      data['favoriteLeagues'] = favoriteLeagues!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FavoriteLeagues {
  String? uid;
  String? name;
  String? url;

  FavoriteLeagues({this.uid, this.name, this.url});

  FavoriteLeagues.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['uid'] = uid;
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}
