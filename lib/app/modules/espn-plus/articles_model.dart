class Articles {
  List<ArticlesList>? articlesList;

  Articles({this.articlesList});

  Articles.fromJson(Map<String, dynamic> json) {
    if (json['content'] != null) {
      articlesList = <ArticlesList>[];
      json['content'].forEach((v) {
        articlesList!.add(ArticlesList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (articlesList != null) {
      data['content'] = articlesList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ArticlesList {
  String? id;
  String? publishedDate;
  String? lastModified;
  String? type;
  List<ArticleItems>? articleItems;
  ArticleHeader? header;

  ArticlesList(
      {this.id,
      this.publishedDate,
      this.lastModified,
      this.type,
      this.articleItems,
      this.header});

  ArticlesList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    publishedDate = json['publishedDate'];
    lastModified = json['lastModified'];
    type = json['type'];
    if (json['items'] != null) {
      articleItems = <ArticleItems>[];
      json['items'].forEach((v) {
        articleItems!.add(ArticleItems.fromJson(v));
      });
    }
    header = json['header'] != null ? ArticleHeader?.fromJson(json['header']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['publishedDate'] = publishedDate;
    data['lastModified'] = lastModified;
    data['type'] = type;
    if (articleItems != null) {
      data['items'] = articleItems!.map((v) => v.toJson()).toList();
    }
    if (header != null) {
      data['header'] = header!.toJson();
    }
    return data;
  }
}

class ArticleItems {
  int? id;
  String? publishedDate;
  String? lastModified;
  String? type;
  bool? isPremium;
  String? cellType;
  String? cellStyle;
  String? nowId;
  Article? article;
  String? formattedTimestamp;
  Tracking? tracking;
  String? parentId;
  String? parentType;
  String? parentDate;

  ArticleItems(
      {this.id,
      this.publishedDate,
      this.lastModified,
      this.type,
      this.isPremium,
      this.cellType,
      this.cellStyle,
      this.nowId,
      this.article,
      this.formattedTimestamp,
      this.tracking,
      this.parentId,
      this.parentType,
      this.parentDate});

  ArticleItems.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    publishedDate = json['publishedDate'];
    lastModified = json['lastModified'];
    type = json['type'];
    isPremium = json['isPremium'];
    cellType = json['cellType'];
    cellStyle = json['cellStyle'];
    nowId = json['nowId'];
    article = json['article'] != null ? Article?.fromJson(json['article']) : null;
    formattedTimestamp = json['formattedTimestamp'];
    tracking =
        json['tracking'] != null ? Tracking?.fromJson(json['tracking']) : null;
    parentId = json['parentId'];
    parentType = json['parentType'];
    parentDate = json['parentDate'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['publishedDate'] = publishedDate;
    data['lastModified'] = lastModified;
    data['type'] = type;
    data['isPremium'] = isPremium;
    data['cellType'] = cellType;
    data['cellStyle'] = cellStyle;
    data['nowId'] = nowId;
    if (article != null) {
      data['article'] = article!.toJson();
    }
    data['formattedTimestamp'] = formattedTimestamp;
    if (tracking != null) {
      data['tracking'] = tracking!.toJson();
    }
    data['parentId'] = parentId;
    data['parentType'] = parentType;
    data['parentDate'] = parentDate;
    return data;
  }
}

class Article {
  String? headline;
  CoverImages? images;
  String? description;
  String? byline;
  String? linkText;
  ShareBasicInfo? share;
  String? url;
  String? colorPrimary;
  String? category;

  Article(
      {this.headline,
      this.images,
      this.description,
      this.byline,
      this.linkText,
      this.share,
      this.url,
      this.colorPrimary,
      this.category});

  Article.fromJson(Map<String, dynamic> json) {
    headline = json['headline'];
    images = json['images'] != null ? CoverImages?.fromJson(json['images']) : null;
    description = json['description'];
    byline = json['byline'];
    linkText = json['linkText'];
    share = json['share'] != null ? ShareBasicInfo?.fromJson(json['share']) : null;
    url = json['url'];
    colorPrimary = json['colorPrimary'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['headline'] = headline;
    if (images != null) {
      data['images'] = images!.toJson();
    }
    data['description'] = description;
    data['byline'] = byline;
    data['linkText'] = linkText;
    if (share != null) {
      data['share'] = share!.toJson();
    }
    data['url'] = url;
    data['colorPrimary'] = colorPrimary;
    data['category'] = category;
    return data;
  }
}

class CoverImages {
  String? s169;
  String? s32;
  String? s52;
  String? standard;
  String? photoCredit;
  String? s11;

  CoverImages(
      {this.s169,
      this.s32,
      this.s52,
      this.standard,
      this.photoCredit,
      this.s11});

  CoverImages.fromJson(Map<String, dynamic> json) {
    s169 = json['16:9'];
    s32 = json['3:2'];
    s52 = json['5:2'];
    standard = json['standard'];
    photoCredit = json['photoCredit'];
    s11 = json['1:1'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['16:9'] = s169;
    data['3:2'] = s32;
    data['5:2'] = s52;
    data['standard'] = standard;
    data['photoCredit'] = photoCredit;
    data['1:1'] = s11;
    return data;
  }
}

class ShareBasicInfo {
  String? headline;
  String? description;
  ShareLink? link;

  ShareBasicInfo({this.headline, this.description, this.link});

  ShareBasicInfo.fromJson(Map<String, dynamic> json) {
    headline = json['headline'];
    description = json['description'];
    link = json['link'] != null ? ShareLink?.fromJson(json['link']) : null;
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

class ShareLink {
  ShareLinkAction? action;
  String? text;

  ShareLink({this.action, this.text});

  ShareLink.fromJson(Map<String, dynamic> json) {
    action = json['action'] != null ? ShareLinkAction?.fromJson(json['action']) : null;
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

class ShareLinkAction {
  String? url;
  String? type;
  String? fullURL;

  ShareLinkAction({this.url, this.type, this.fullURL});

  ShareLinkAction.fromJson(Map<String, dynamic> json) {
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

class Tracking {
  String? teamName;
  String? leagueName;
  String? sportName;
  String? byline;
  String? leagueId;
  bool? isPersonalized;
  String? personalizedType;
  bool? isCurated;
  int? contentScore;
  String? ruleName;
  String? ruleNumber;
  String? contentId;
  String? contentType;
  String? categories;
  String? presentationType;
  String? teamId;
  int? index;

  Tracking(
      {this.teamName,
      this.leagueName,
      this.sportName,
      this.byline,
      this.leagueId,
      this.isPersonalized,
      this.personalizedType,
      this.isCurated,
      this.contentScore,
      this.ruleName,
      this.ruleNumber,
      this.contentId,
      this.contentType,
      this.categories,
      this.presentationType,
      this.teamId,
      this.index});

  Tracking.fromJson(Map<String, dynamic> json) {
    teamName = json['teamName'];
    leagueName = json['leagueName'];
    sportName = json['sportName'];
    byline = json['byline'];
    leagueId = json['leagueId'];
    isPersonalized = json['isPersonalized'];
    personalizedType = json['personalizedType'];
    isCurated = json['isCurated'];
    contentScore = json['contentScore'];
    ruleName = json['ruleName'];
    ruleNumber = json['ruleNumber'];
    contentId = json['contentId'];
    contentType = json['contentType'];
    categories = json['categories'];
    presentationType = json['presentationType'];
    teamId = json['teamId'];
    index = json['index'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['teamName'] = teamName;
    data['leagueName'] = leagueName;
    data['sportName'] = sportName;
    data['byline'] = byline;
    data['leagueId'] = leagueId;
    data['isPersonalized'] = isPersonalized;
    data['personalizedType'] = personalizedType;
    data['isCurated'] = isCurated;
    data['contentScore'] = contentScore;
    data['ruleName'] = ruleName;
    data['ruleNumber'] = ruleNumber;
    data['contentId'] = contentId;
    data['contentType'] = contentType;
    data['categories'] = categories;
    data['presentationType'] = presentationType;
    data['teamId'] = teamId;
    data['index'] = index;
    return data;
  }
}

class ArticleHeader {
  String? color;
  String? image;
  String? label;
  bool? isPremium;

  ArticleHeader({this.color, this.image, this.label, this.isPremium});

  ArticleHeader.fromJson(Map<String, dynamic> json) {
    color = json['color'];
    image = json['image'];
    label = json['label'];
    isPremium = json['isPremium'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['color'] = color;
    data['image'] = image;
    data['label'] = label;
    data['isPremium'] = isPremium;
    return data;
  }
}
