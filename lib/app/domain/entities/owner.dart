import 'package:equatable/equatable.dart';

/// Owner data entity
class Owner extends Equatable {
  ///
  Owner({
    this.reputation,
    this.userId,
    this.profileImage,
    this.displayName,
    this.link,
  });

  /// Reputation count user
  final int reputation;
  /// Id user
  final int userId;
  /// URL profile image
  final String profileImage;
  /// Name user
  final String displayName;
  /// URL user site, for example https://example.com
  final String link;

  @override
  List<Object> get props => [
        reputation,
        userId,
        profileImage,
        displayName,
        link,
      ];
}
