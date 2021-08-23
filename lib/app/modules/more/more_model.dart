class MoreSection {
  List<SectionList>? sectionList;

  MoreSection({this.sectionList});

  MoreSection.fromJson(Map<String, dynamic> json) {
    if (json['sections'] != null) {
      sectionList = <SectionList>[];
      json['sections'].forEach((v) {
        sectionList!.add(SectionList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (sectionList != null) {
      data['sections'] = sectionList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SectionList {
  String? label;
  String? includeRecentsSection;
  String? image;
  List<SectionItems>? sectionItems;
  String? automationIdentifier;

  SectionList(
      {this.label,
      this.includeRecentsSection,
      this.image,
      this.sectionItems,
      this.automationIdentifier});

  SectionList.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    includeRecentsSection = json['includeRecentsSection'];
    image = json['image'];
    if (json['items'] != null) {
      sectionItems = <SectionItems>[];
      json['items'].forEach((v) {
        sectionItems!.add(SectionItems.fromJson(v));
      });
    }
    automationIdentifier = json['automationIdentifier'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['label'] = label;
    data['includeRecentsSection'] = includeRecentsSection;
    data['image'] = image;
    if (sectionItems != null) {
      data['items'] = sectionItems!.map((v) => v.toJson()).toList();
    }
    data['automationIdentifier'] = automationIdentifier;
    return data;
  }
}

class SectionItems {
  String? label;
  String? uid;
  SectionItemAction? action;
  String? image;
  String? imageDark;
  SectionItemChildren? children;
  String? automationIdentifier;
  bool? requiresFavoritePodcasts;
  bool? customItem;

  SectionItems(
      {this.label,
      this.uid,
      this.action,
      this.image,
      this.imageDark,
      this.children,
      this.automationIdentifier,
      this.requiresFavoritePodcasts,
      this.customItem});

  SectionItems.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    uid = json['uid'];
    action = json['action'] != null ? SectionItemAction?.fromJson(json['action']) : null;
    image = json['image'];
    imageDark = json['image-dark'];
    children =
        json['children'] != null ? SectionItemChildren?.fromJson(json['children']) : null;
    automationIdentifier = json['automationIdentifier'];
    requiresFavoritePodcasts = json['requiresFavoritePodcasts'];
    customItem = json['customItem'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['label'] = label;
    data['uid'] = uid;
    if (action != null) {
      data['action'] = action!.toJson();
    }
    data['image'] = image;
    data['image-dark'] = imageDark;
    if (children != null) {
      data['children'] = children!.toJson();
    }
    data['automationIdentifier'] = automationIdentifier;
    data['requiresFavoritePodcasts'] = requiresFavoritePodcasts;
    data['customItem'] = customItem;
    return data;
  }
}

class Action {
  String? type;
  String? url;

  Action({this.type, this.url});

  Action.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type;
    data['url'] = url;
    return data;
  }
}



class Data {
  List<Sections>? sections;

  Data({this.sections});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['sections'] != null) {
      sections = <Sections>[];
      json['sections'].forEach((v) {
        sections!.add(Sections.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (sections != null) {
      data['sections'] = sections!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Sections {
  List<Items>? items;

  Sections({this.items});

  Sections.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? label;
  String? leagueAbbreviation;
  String? uid;
  SectionItemAction? action;
  String? image;
  String? imageDark;
  SectionItemChildren? children;

  Items(
      {this.label,
      this.leagueAbbreviation,
      this.uid,
      this.action,
      this.image,
      this.imageDark,
      this.children});

  Items.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    leagueAbbreviation = json['leagueAbbreviation'];
    uid = json['uid'];
    action = json['action'] != null ? SectionItemAction?.fromJson(json['action']) : null;
    image = json['image'];
    imageDark = json['image-dark'];
    children =
        json['children'] != null ? SectionItemChildren?.fromJson(json['children']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['label'] = label;
    data['leagueAbbreviation'] = leagueAbbreviation;
    data['uid'] = uid;
    if (action != null) {
      data['action'] = action!.toJson();
    }
    data['image'] = image;
    data['image-dark'] = imageDark;
    if (children != null) {
      data['children'] = children!.toJson();
    }
    return data;
  }
}



class SectionItemAction {
  String? type;
  String? url;

  SectionItemAction({this.type, this.url});

  SectionItemAction.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['url'] = this.url;
    return data;
  }
}

class SectionItemChildren {
  Data? data;

  SectionItemChildren({this.data});

  SectionItemChildren.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}


