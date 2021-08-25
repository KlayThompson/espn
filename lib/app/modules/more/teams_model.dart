class Teams {
  int? totalCount;
  int? limit;
  int? currentPage;
  int? totalPages;
  List<TeamItem>? teams;

  Teams(
      {this.totalCount,
      this.limit,
      this.currentPage,
      this.totalPages,
      this.teams});

  Teams.fromJson(Map<String, dynamic> json) {
    totalCount = json['totalCount'];
    limit = json['limit'];
    currentPage = json['currentPage'];
    totalPages = json['totalPages'];
    if (json['children'] != null) {
      teams = <TeamItem>[];
      json['children'].forEach((v) {
        teams!.add(TeamItem.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['totalCount'] = totalCount;
    data['limit'] = limit;
    data['currentPage'] = currentPage;
    data['totalPages'] = totalPages;
    if (teams != null) {
      data['children'] = teams!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TeamItem {
  String? uid;
  String? logoURL;
  String? darkLogoURL;
  String? name;
  String? abbreviation;
  String? sportSlug;
  String? displayName;
  String? color;
  String? secondaryColor;

  TeamItem(
      {this.uid,
      this.logoURL,
      this.darkLogoURL,
      this.name,
      this.abbreviation,
      this.sportSlug,
      this.displayName,
      this.color,
      this.secondaryColor});

  TeamItem.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    logoURL = json['logoURL'];
    darkLogoURL = json['darkLogoURL'];
    name = json['name'];
    abbreviation = json['abbreviation'];
    sportSlug = json['sportSlug'];
    displayName = json['displayName'];
    color = json['color'];
    secondaryColor = json['secondaryColor'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['uid'] = uid;
    data['logoURL'] = logoURL;
    data['darkLogoURL'] = darkLogoURL;
    data['name'] = name;
    data['abbreviation'] = abbreviation;
    data['sportSlug'] = sportSlug;
    data['displayName'] = displayName;
    data['color'] = color;
    data['secondaryColor'] = secondaryColor;
    return data;
  }
}
