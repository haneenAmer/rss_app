class Categories {
  final int count;
  final List<Category> data;

  Categories({
    required this.count,
    required this.data,
  });

  Categories copyWith({
    int? count,
    List<Category>? data,
  }) =>
      Categories(
        count: count ?? this.count,
        data: data ?? this.data,
      );

  factory Categories.fromJson(Map<String, dynamic> json) => Categories(
        count: json["count"],
        data:
            List<Category>.from(json["data"].map((x) => Category.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Category {
  final String? id;
  final String? image;
  final Name? name;

  Category({
    required this.id,
    required this.image,
    required this.name,
  });

  Category copyWith({
    String? id,
    String? image,
    Name? name,
  }) =>
      Category(
        id: id ?? this.id,
        image: image ?? this.image,
        name: name ?? this.name,
      );

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        image: json["image"],
        name: Name.fromJson(json["name"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "name": name?.toJson(),
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
