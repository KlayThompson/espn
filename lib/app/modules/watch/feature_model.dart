class Feature {
  String? name;
  String? layout;
  List<Buckets>? buckets;

  Feature({this.name, this.layout, this.buckets});

  Feature.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    layout = json['layout'];
    if (json['buckets'] != null) {
      buckets = <Buckets>[];
      json['buckets'].forEach((v) {
        buckets!.add(Buckets.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['layout'] = layout;
    if (buckets != null) {
      data['buckets'] = buckets!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Buckets {
  int? id;
  String? name;
  String? type;
  Metadata? metadata;
  String? description;
  bool? isDtcOnly;
  bool? isTveOnly;
  List<Contents>? contents;

  Buckets(
      {this.id,
      this.name,
      this.type,
      this.metadata,
      this.description,
      this.isDtcOnly,
      this.isTveOnly,
      this.contents});

  Buckets.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    metadata =
        json['metadata'] != null ? Metadata?.fromJson(json['metadata']) : null;
    description = json['description'];
    isDtcOnly = json['isDtcOnly'];
    isTveOnly = json['isTveOnly'];
    if (json['contents'] != null) {
      contents = <Contents>[];
      json['contents'].forEach((v) {
        contents!.add(Contents.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['type'] = type;
    if (metadata != null) {
      data['metadata'] = metadata!.toJson();
    }
    data['description'] = description;
    data['isDtcOnly'] = isDtcOnly;
    data['isTveOnly'] = isTveOnly;
    if (contents != null) {
      data['contents'] = contents!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Metadata {
  int? totalCount;
  int? displayCount;
  int? displayMinimum;
  String? ratio;
  String? imageFormat;
  String? size;
  int? bucketId;
  bool? combinedTile;
  bool? scored;
  bool? grouped;
  bool? curated;

  Metadata(
      {this.totalCount,
      this.displayCount,
      this.displayMinimum,
      this.ratio,
      this.imageFormat,
      this.size,
      this.bucketId,
      this.combinedTile,
      this.scored,
      this.grouped,
      this.curated});

  Metadata.fromJson(Map<String, dynamic> json) {
    totalCount = json['totalCount'];
    displayCount = json['displayCount'];
    displayMinimum = json['displayMinimum'];
    ratio = json['ratio'];
    imageFormat = json['imageFormat'];
    size = json['size'];
    bucketId = json['bucketId'];
    combinedTile = json['combinedTile'];
    scored = json['scored'];
    grouped = json['grouped'];
    curated = json['curated'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['totalCount'] = totalCount;
    data['displayCount'] = displayCount;
    data['displayMinimum'] = displayMinimum;
    data['ratio'] = ratio;
    data['imageFormat'] = imageFormat;
    data['size'] = size;
    data['bucketId'] = bucketId;
    data['combinedTile'] = combinedTile;
    data['scored'] = scored;
    data['grouped'] = grouped;
    data['curated'] = curated;
    return data;
  }
}



class Contents {
  String? id;
  int? eventId;
  bool? isEvent;
  String? status;
  String? type;
  String? imageFormat;
  String? ratio;
  String? size;
  String? name;
  String? subtitle;
  String? imageHref;
  String? date;
  String? shortDate;
  String? utc;
  String? time;
  int? score;
  bool? includeSponsor;
  bool? showKey;
  bool? isLocked;
  bool? isPersonalized;
  bool? isDtcOnly;
  bool? isTveOnly;
  List<Streams>? streams;
  PlayLinks? links;
  List<Catalog>? catalog;
  String? backgroundImageHref;
  String? subtype;
  String? iconHref;
  String? guid;
  String? imageHrefSmall;

  Contents(
      {this.id,
      this.eventId,
      this.isEvent,
      this.status,
      this.type,
      this.imageFormat,
      this.ratio,
      this.size,
      this.name,
      this.subtitle,
      this.imageHref,
      this.date,
      this.shortDate,
      this.utc,
      this.time,
      this.score,
      this.includeSponsor,
      this.showKey,
      this.isLocked,
      this.isPersonalized,
      this.isDtcOnly,
      this.isTveOnly,
      this.streams,
      this.links,
      this.catalog,
      this.backgroundImageHref,
      this.subtype,
      this.iconHref,
      this.guid,
      this.imageHrefSmall});

  Contents.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    eventId = json['eventId'];
    isEvent = json['isEvent'];
    status = json['status'];
    type = json['type'];
    imageFormat = json['imageFormat'];
    ratio = json['ratio'];
    size = json['size'];
    name = json['name'];
    subtitle = json['subtitle'];
    imageHref = json['imageHref'];
    date = json['date'];
    shortDate = json['shortDate'];
    utc = json['utc'];
    time = json['time'];
    score = json['score'];
    includeSponsor = json['includeSponsor'];
    showKey = json['showKey'];
    isLocked = json['isLocked'];
    isPersonalized = json['isPersonalized'];
    isDtcOnly = json['isDtcOnly'];
    isTveOnly = json['isTveOnly'];
    if (json['streams'] != null) {
      streams = <Streams>[];
      json['streams'].forEach((v) {
        streams!.add(Streams.fromJson(v));
      });
    }
    links = json['links'] != null ? PlayLinks?.fromJson(json['links']) : null;
    if (json['catalog'] != null) {
      catalog = <Catalog>[];
      json['catalog'].forEach((v) {
        catalog!.add(Catalog.fromJson(v));
      });
    }
    backgroundImageHref = json['backgroundImageHref'];
    subtype = json['subtype'];
    iconHref = json['iconHref'];
    guid = json['guid'];
    imageHrefSmall = json['imageHrefSmall'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['eventId'] = eventId;
    data['isEvent'] = isEvent;
    data['status'] = status;
    data['type'] = type;
    data['imageFormat'] = imageFormat;
    data['ratio'] = ratio;
    data['size'] = size;
    data['name'] = name;
    data['subtitle'] = subtitle;
    data['imageHref'] = imageHref;
    data['date'] = date;
    data['shortDate'] = shortDate;
    data['utc'] = utc;
    data['time'] = time;
    data['score'] = score;
    data['includeSponsor'] = includeSponsor;
    data['showKey'] = showKey;
    data['isLocked'] = isLocked;
    data['isPersonalized'] = isPersonalized;
    data['isDtcOnly'] = isDtcOnly;
    data['isTveOnly'] = isTveOnly;
    if (streams != null) {
      data['streams'] = streams!.map((v) => v.toJson()).toList();
    }
    if (links != null) {
      data['links'] = links!.toJson();
    }
    if (catalog != null) {
      data['catalog'] = catalog!.map((v) => v.toJson()).toList();
    }
    data['backgroundImageHref'] = backgroundImageHref;
    data['subtype'] = subtype;
    data['iconHref'] = iconHref;
    data['guid'] = guid;
    data['imageHrefSmall'] = imageHrefSmall;
    return data;
  }
}

class Streams {
  String? id;
  String? status;
  String? tier;
  String? name;
  String? duration;
  Source? source;
  int? score;
  bool? showKey;
  bool? isLocked;
  bool? isDownloadable;
  bool? isPersonalized;
  PlayLinks? links;

  Streams(
      {this.id,
      this.status,
      this.tier,
      this.name,
      this.duration,
      this.source,
      this.score,
      this.showKey,
      this.isLocked,
      this.isDownloadable,
      this.isPersonalized,
      this.links});

  Streams.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    tier = json['tier'];
    name = json['name'];
    duration = json['duration'];
    source = json['source'] != null ? Source?.fromJson(json['source']) : null;
    score = json['score'];
    showKey = json['showKey'];
    isLocked = json['isLocked'];
    isDownloadable = json['isDownloadable'];
    isPersonalized = json['isPersonalized'];
    links = json['links'] != null ? PlayLinks?.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['status'] = status;
    data['tier'] = tier;
    data['name'] = name;
    data['duration'] = duration;
    if (source != null) {
      data['source'] = source!.toJson();
    }
    data['score'] = score;
    data['showKey'] = showKey;
    data['isLocked'] = isLocked;
    data['isDownloadable'] = isDownloadable;
    data['isPersonalized'] = isPersonalized;
    if (links != null) {
      data['links'] = links!.toJson();
    }
    return data;
  }
}

class Source {
  String? id;
  String? name;
  String? lang;
  String? type;
  String? origination;

  Source({this.id, this.name, this.lang, this.type, this.origination});

  Source.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    lang = json['lang'];
    type = json['type'];
    origination = json['origination'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['lang'] = lang;
    data['type'] = type;
    data['origination'] = origination;
    return data;
  }
}

class PlayLinks {
  String? appPlay;
  String? play;
  String? self;
  String? shareUrl;
  String? picker;

  PlayLinks({this.appPlay, this.play, this.self, this.shareUrl, this.picker});

  PlayLinks.fromJson(Map<String, dynamic> json) {
    appPlay = json['appPlay'];
    play = json['play'];
    self = json['self'];
    shareUrl = json['shareUrl'];
    picker = json['picker'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['appPlay'] = appPlay;
    data['play'] = play;
    data['self'] = self;
    data['shareUrl'] = shareUrl;
    data['picker'] = picker;
    return data;
  }
}

class Catalog {
  String? id;
  String? type;
  String? name;
  String? link;

  Catalog({this.id, this.type, this.name, this.link});

  Catalog.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    name = json['name'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['type'] = type;
    data['name'] = name;
    data['link'] = link;
    return data;
  }
}
