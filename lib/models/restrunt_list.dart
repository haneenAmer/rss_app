class RestruntList {
  final int count;
  final List<Restrunt> data;

  RestruntList({
    required this.count,
    required this.data,
  });

  RestruntList copyWith({
    int? count,
    List<Restrunt>? data,
  }) {
    return RestruntList(
      count: count ?? this.count,
      data: data ?? this.data,
    );
  }

  factory RestruntList.fromJson(Map<String, dynamic> json) => RestruntList(
        count: json["count"],
        data:
            List<Restrunt>.from(json["data"].map((x) => Restrunt.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
//     RestruntList RestruntListFromJson(String str) => RestruntList.fromJson(json.decode(str));

// String RestruntListToJson(RestruntList data) => json.encode(data.toJson());
}

class Restrunt {
  final String? id;
  final String? nameId;
  final String? locationId;
  final double? lng;
  final double? lat;
  final Name? name;

  Restrunt({
    required this.id,
    required this.nameId,
    required this.locationId,
    required this.lng,
    required this.lat,
    required this.name,
  });

  Restrunt copyWith({
    String? id,
    String? nameId,
    String? locationId,
    double? lng,
    double? lat,
    Name? name,
  }) =>
      Restrunt(
        id: id ?? this.id,
        nameId: nameId ?? this.nameId,
        locationId: locationId ?? this.locationId,
        lng: lng ?? this.lng,
        lat: lat ?? this.lat,
        name: name ?? this.name,
      );

  factory Restrunt.fromJson(Map<String, dynamic> json) => Restrunt(
        id: json["id"],
        nameId: json["nameId"],
        locationId: json["locationId"],
        lng: json["lng"]?.toDouble(),
        lat: json["lat"]?.toDouble(),
        name: Name.fromJson(json["name"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nameId": nameId,
        "locationId": locationId,
        "lng": lng,
        "lat": lat,
        "name": name!.toJson(),
      };
}

class Name {
  final String ar;

  Name({
    required this.ar,
  });

  Name copyWith({
    String? ar,
  }) =>
      Name(
        ar: ar ?? this.ar,
      );

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        ar: json["ar"],
      );

  Map<String, dynamic> toJson() => {
        "ar": ar,
      };
}
