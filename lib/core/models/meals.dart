class Meals {
  final int count;
  final List<Meal> data;

  Meals({
    required this.count,
    required this.data,
  });

  Meals copyWith({
    int? count,
    List<Meal>? data,
  }) =>
      Meals(
        count: count ?? this.count,
        data: data ?? this.data,
      );

  factory Meals.fromJson(Map<String, dynamic> json) => Meals(
        count: json["count"],
        data: List<Meal>.from(json["data"].map((x) => Meal.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Meal {
  final String? id;
  final String? image;
  final String? nameId;
  final String? tenantId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Name? name;
  final Tenant? tenant;

  Meal({
    required this.id,
    required this.image,
    required this.nameId,
    required this.tenantId,
    required this.createdAt,
    required this.updatedAt,
    required this.name,
    required this.tenant,
  });

  Meal copyWith({
    String? id,
    String? image,
    String? nameId,
    String? tenantId,
    DateTime? createdAt,
    DateTime? updatedAt,
    Name? name,
    Tenant? tenant,
  }) =>
      Meal(
        id: id ?? this.id,
        image: image ?? this.image,
        nameId: nameId ?? this.nameId,
        tenantId: tenantId ?? this.tenantId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        name: name ?? this.name,
        tenant: tenant ?? this.tenant,
      );

  factory Meal.fromJson(Map<String, dynamic> json) => Meal(
        id: json["id"],
        image: json["image"],
        nameId: json["nameId"],
        tenantId: json["tenantId"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"],
        name: Name.fromJson(json["name"]),
        tenant: Tenant.fromJson(json["tenant"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "nameId": nameId,
        "tenantId": tenantId,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt,
        "name": name?.toJson(),
        "tenant": tenant?.toJson(),
      };
}

class Name {
  final String? ar;

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

class Tenant {
  final String? id;
  final Name? name;

  Tenant({
    required this.id,
    required this.name,
  });

  Tenant copyWith({
    String? id,
    Name? name,
  }) =>
      Tenant(
        id: id ?? this.id,
        name: name ?? this.name,
      );

  factory Tenant.fromJson(Map<String, dynamic> json) => Tenant(
        id: json["id"],
        name: Name.fromJson(json["name"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name?.toJson(),
      };
}
