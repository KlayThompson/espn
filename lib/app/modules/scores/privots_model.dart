class Pivots {
  String? uid;
  String? label;
  String? image;
  String? automationIdentifier;
  String? type;
  List<PivotsChildren>? pivotsChildren;
  PivotsAnalytics? pivotsAnalytics;

  Pivots(
      {this.uid,
        this.label,
        this.image,
        this.automationIdentifier,
        this.type,
        this.pivotsChildren,
        this.pivotsAnalytics});

  Pivots.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    label = json['label'];
    image = json['image'];
    automationIdentifier = json['automationIdentifier'];
    type = json['type'];
    if (json['pivotsChildren'] != null) {
      pivotsChildren = <PivotsChildren>[];
      json['pivotsChildren'].forEach((v) {
        pivotsChildren!.add(new PivotsChildren.fromJson(v));
      });
    }
    pivotsAnalytics = json['pivotsAnalytics'] != null
        ? new PivotsAnalytics.fromJson(json['pivotsAnalytics'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['label'] = this.label;
    data['image'] = this.image;
    data['automationIdentifier'] = this.automationIdentifier;
    data['type'] = this.type;
    if (this.pivotsChildren != null) {
      data['pivotsChildren'] =
          this.pivotsChildren!.map((v) => v.toJson()).toList();
    }
    if (this.pivotsAnalytics != null) {
      data['pivotsAnalytics'] = this.pivotsAnalytics!.toJson();
    }
    return data;
  }
}

class PivotsChildren {
  String? uid;
  String? label;
  String? automationIdentifier;
  String? type;
  PivotsAnalytics? pivotsAnalytics;

  PivotsChildren(
      {this.uid,
        this.label,
        this.automationIdentifier,
        this.type,
        this.pivotsAnalytics});

  PivotsChildren.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    label = json['label'];
    automationIdentifier = json['automationIdentifier'];
    type = json['type'];
    pivotsAnalytics = json['pivotsAnalytics'] != null
        ? new PivotsAnalytics.fromJson(json['pivotsAnalytics'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['label'] = this.label;
    data['automationIdentifier'] = this.automationIdentifier;
    data['type'] = this.type;
    if (this.pivotsAnalytics != null) {
      data['pivotsAnalytics'] = this.pivotsAnalytics!.toJson();
    }
    return data;
  }
}

class PivotsAnalytics {
  String? league;
  bool? isFavoriteLeague;
  bool? hasFavoriteTeam;
  bool? hasLiveGames;
  bool? wasEditoriallyCurated;

  PivotsAnalytics(
      {this.league,
        this.isFavoriteLeague,
        this.hasFavoriteTeam,
        this.hasLiveGames,
        this.wasEditoriallyCurated});

  PivotsAnalytics.fromJson(Map<String, dynamic> json) {
    league = json['league'];
    isFavoriteLeague = json['isFavoriteLeague'];
    hasFavoriteTeam = json['hasFavoriteTeam'];
    hasLiveGames = json['hasLiveGames'];
    wasEditoriallyCurated = json['wasEditoriallyCurated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['league'] = this.league;
    data['isFavoriteLeague'] = this.isFavoriteLeague;
    data['hasFavoriteTeam'] = this.hasFavoriteTeam;
    data['hasLiveGames'] = this.hasLiveGames;
    data['wasEditoriallyCurated'] = this.wasEditoriallyCurated;
    return data;
  }
}

