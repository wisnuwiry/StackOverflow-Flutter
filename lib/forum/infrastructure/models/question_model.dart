import '../../domain/entities/question.dart';
import 'owner_model.dart';

/// Data model question, this is inheritance from [Question] entity
/// This data model can return data fromJson and toJson
class QuestionModel extends Question {
  ///
  QuestionModel({
    this.tags,
    this.owner,
    this.isAnswered,
    this.viewCount,
    this.answerCount,
    this.score,
    this.lastActivityDate,
    this.creationDate,
    this.questionId,
    this.link,
    this.title,
    this.lastEditDate,
    this.acceptedAnswerId,
  });

  final List<String> tags;
  final OwnerModel owner;
  final bool isAnswered;
  final int viewCount;
  final int answerCount;
  final int score;
  final int lastActivityDate;
  final int creationDate;
  final int questionId;
  final String link;
  final String title;
  final int lastEditDate;
  final int acceptedAnswerId;

  /// Parse data from json data to [QuestionModel]
  factory QuestionModel.fromJson(Map<String, dynamic> json) => QuestionModel(
        tags: List<String>.from(json["tags"].map((x) => x)),
        owner: OwnerModel.fromJson(json["owner"]),
        isAnswered: json["is_answered"],
        viewCount: json["view_count"],
        answerCount: json["answer_count"],
        score: json["score"],
        lastActivityDate: json["last_activity_date"],
        creationDate: json["creation_date"],
        questionId: json["question_id"],
        link: json["link"],
        title: json["title"],
        lastEditDate:
            json["last_edit_date"] == null ? null : json["last_edit_date"],
        acceptedAnswerId: json["accepted_answer_id"] == null
            ? null
            : json["accepted_answer_id"],
      );

  /// From this model to Map data
  Map<String, dynamic> toJson() => {
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "owner": owner.toJson(),
        "is_answered": isAnswered,
        "view_count": viewCount,
        "answer_count": answerCount,
        "score": score,
        "last_activity_date": lastActivityDate,
        "creation_date": creationDate,
        "question_id": questionId,
        "link": link,
        "title": title,
        "last_edit_date": lastEditDate == null ? null : lastEditDate,
        "accepted_answer_id":
            acceptedAnswerId == null ? null : acceptedAnswerId,
      };
}
