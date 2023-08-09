// To parse this JSON data, do
//
//     final HomePageAds = HomePageAdsFromJson(jsonString);

class HomePageAds {
  final int count;
  final List<HomePageAd> data;

  HomePageAds({
    required this.count,
    required this.data,
  });

  HomePageAds copyWith({
    int? count,
    List<HomePageAd>? data,
  }) =>
      HomePageAds(
        count: count ?? this.count,
        data: data ?? this.data,
      );

  factory HomePageAds.fromJson(Map<String, dynamic> json) => HomePageAds(
        count: json["count"],
        data: List<HomePageAd>.from(
            json["data"].map((x) => HomePageAd.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class HomePageAd {
  final String id;
  final String image;
  final String titleId;
  final dynamic url;
  final DateTime createdAt;

  HomePageAd({
    required this.id,
    required this.image,
    required this.titleId,
    required this.url,
    required this.createdAt,
  });

  HomePageAd copyWith({
    String? id,
    String? image,
    String? titleId,
    dynamic url,
    DateTime? createdAt,
  }) =>
      HomePageAd(
        id: id ?? this.id,
        image: image ?? this.image,
        titleId: titleId ?? this.titleId,
        url: url ?? this.url,
        createdAt: createdAt ?? this.createdAt,
      );

  factory HomePageAd.fromJson(Map<String, dynamic> json) => HomePageAd(
        id: json["id"],
        image: json["image"],
        titleId: json["titleId"],
        url: json["url"],
        createdAt: DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "titleId": titleId,
        "url": url,
        "createdAt": createdAt.toIso8601String(),
      };
}
