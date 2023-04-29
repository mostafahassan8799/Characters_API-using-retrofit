class AllCharatersModel {
  Info? info;
  List<Results>? results;

  AllCharatersModel({this.info, this.results});

  AllCharatersModel.fromJson(Map<String, dynamic> json) {
    info = json["info"] == null ? null : Info.fromJson(json["info"]);
    results = json["results"] == null
        ? null
        : (json["results"] as List).map((e) => Results.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (info != null) {
      _data["info"] = info?.toJson();
    }
    if (results != null) {
      _data["results"] = results?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Results {
  int? id;
  String? name;
  String? status;
  String? species;
  String? type;
  String? gender;
  Origin? origin;
  Location? location;
  String? image;
  List<String>? episode;
  String? url;
  String? created;

  Results(
      {this.id,
      this.name,
      this.status,
      this.species,
      this.type,
      this.gender,
      this.origin,
      this.location,
      this.image,
      this.episode,
      this.url,
      this.created});

  Results.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    status = json["status"];
    species = json["species"];
    type = json["type"];
    gender = json["gender"];
    origin = json["origin"] == null ? null : Origin.fromJson(json["origin"]);
    location =
        json["location"] == null ? null : Location.fromJson(json["location"]);
    image = json["image"];
    episode =
        json["episode"] == null ? null : List<String>.from(json["episode"]);
    url = json["url"];
    created = json["created"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["status"] = status;
    _data["species"] = species;
    _data["type"] = type;
    _data["gender"] = gender;
    if (origin != null) {
      _data["origin"] = origin?.toJson();
    }
    if (location != null) {
      _data["location"] = location?.toJson();
    }
    _data["image"] = image;
    if (episode != null) {
      _data["episode"] = episode;
    }
    _data["url"] = url;
    _data["created"] = created;
    return _data;
  }
}

class Location {
  String? name;
  String? url;

  Location({this.name, this.url});

  Location.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["url"] = url;
    return _data;
  }
}

class Origin {
  String? name;
  String? url;

  Origin({this.name, this.url});

  Origin.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["url"] = url;
    return _data;
  }
}

class Info {
  int? count;
  int? pages;
  String? next;
  dynamic prev;

  Info({this.count, this.pages, this.next, this.prev});

  Info.fromJson(Map<String, dynamic> json) {
    count = json["count"];
    pages = json["pages"];
    next = json["next"];
    prev = json["prev"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["count"] = count;
    _data["pages"] = pages;
    _data["next"] = next;
    _data["prev"] = prev;
    return _data;
  }
}
