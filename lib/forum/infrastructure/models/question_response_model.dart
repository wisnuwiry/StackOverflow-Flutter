import 'dart:convert';

import 'question_model.dart';

/// Decode data from json to [QuestionResponseModel]
QuestionsResponseModel questionsResponseFromJson(String str) =>
    QuestionsResponseModel.fromJson(json.decode(str));

/// Encode data from Data model [QuestionResponseModel] to json data
String questionsToJson(QuestionsResponseModel data) =>
    json.encode(data.toJson());

/// Data model response Question Model from API
/// This model can return data fromJson and toJson
class QuestionsResponseModel {
  ///
  QuestionsResponseModel({
    this.items,
    this.hasMore,
    this.quotaMax,
    this.quotaRemaining,
  });

  /// List item question model
  final List<QuestionModel> items;
  /// Status has more, when data can load more. 
  /// For example if you use infinite load you want use it
  final bool hasMore;
  ///
  final int quotaMax;
  ///
  final int quotaRemaining;

  /// Return Map data to [QuestionResponseModel]
  factory QuestionsResponseModel.fromJson(Map<String, dynamic> json) =>
      QuestionsResponseModel(
        items: List<QuestionModel>.from(
            json["items"].map((x) => QuestionModel.fromJson(x))),
        hasMore: json["has_more"],
        quotaMax: json["quota_max"],
        quotaRemaining: json["quota_remaining"],
      );

  /// Return map data from this class data model
  Map<String, dynamic> toJson() => {
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "has_more": hasMore,
        "quota_max": quotaMax,
        "quota_remaining": quotaRemaining,
      };
}
