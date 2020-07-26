import '../../domain/entities/owner.dart';

/// Data model Owner, can data fromJson and toJson
class OwnerModel extends Owner {
  /// all data can't update
  OwnerModel({
    this.reputation,
    this.userId,
    this.profileImage,
    this.displayName,
    this.link,
    this.acceptRate,
  });

  final int reputation;
  final int userId;
  final String profileImage;
  final String displayName;
  final String link;
  /// 
  final int acceptRate;

  /// Parse data from json to [OwnerModel]
  factory OwnerModel.fromJson(Map<String, dynamic> json) => OwnerModel(
        reputation: json["reputation"],
        userId: json["user_id"],
        profileImage: json["profile_image"],
        displayName: json["display_name"],
        link: json["link"],
        acceptRate: json["accept_rate"] == null ? null : json["accept_rate"],
      );

  /// Can return this model to Map data or to Json
  Map<String, dynamic> toJson() => {
        "reputation": reputation,
        "user_id": userId,
        "profile_image": profileImage,
        "display_name": displayName,
        "link": link,
        "accept_rate": acceptRate == null ? null : acceptRate,
      };
}
