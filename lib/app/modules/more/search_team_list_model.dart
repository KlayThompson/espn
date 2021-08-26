class SearchTeamList {
  List<SearchData>? searchData;

  SearchTeamList({this.searchData});

  SearchTeamList.fromJson(Map<String, dynamic> json) {
    if (json['content'] != null) {
      searchData = <SearchData>[];
      json['content'].forEach((v) {
        searchData!.add(SearchData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (searchData != null) {
      data['content'] = searchData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SearchData {
  String? type;
  String? label;
  List<TeamList>? teamList;

  SearchData({this.type, this.label, this.teamList});

  SearchData.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    label = json['label'];
    if (json['items'] != null) {
      teamList = <TeamList>[];
      json['items'].forEach((v) {
        teamList!.add(TeamList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type;
    data['label'] = label;
    if (teamList != null) {
      data['items'] = teamList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TeamList {
  String? id;
  String? uid;
  String? type;
  bool? isCollege;
  String? sport;
  String? name;
  String? label;
  String? slug;
  String? image;
  String? darkImage;
  String? subtitle;

  TeamList(
      {this.id,
      this.uid,
      this.type,
      this.isCollege,
      this.sport,
      this.name,
      this.label,
      this.slug,
      this.image,
      this.darkImage,
      this.subtitle});

  TeamList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uid = json['uid'];
    type = json['type'];
    isCollege = json['isCollege'];
    sport = json['sport'];
    name = json['name'];
    label = json['label'];
    slug = json['slug'];
    image = json['image'];
    darkImage = json['darkImage'];
    subtitle = json['subtitle'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['uid'] = uid;
    data['type'] = type;
    data['isCollege'] = isCollege;
    data['sport'] = sport;
    data['name'] = name;
    data['label'] = label;
    data['slug'] = slug;
    data['image'] = image;
    data['darkImage'] = darkImage;
    data['subtitle'] = subtitle;
    return data;
  }
}