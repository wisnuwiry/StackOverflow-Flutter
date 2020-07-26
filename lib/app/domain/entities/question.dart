import 'package:equatable/equatable.dart';

import 'owner.dart';

/// Question data entity
class Question extends Equatable {
  /// All property can't update, must constant variable data
  Question({
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

  /// List tag data 
  final List<String> tags;
  /// Owner data entity
  final Owner owner;
  /// isAnswered or not this question
  final bool isAnswered;
  /// Count view this question
  final int viewCount;
  /// Count answer this question
  final int answerCount;
  /// Score question
  final int score;
  /// Last activiy in this question
  final int lastActivityDate;
  /// Data question created
  final int creationDate;
  /// ID question
  final int questionId;
  /// Link question in StackOverflow site
  final String link;
  /// Title/name question
  final String title;
  /// Last edit question
  final int lastEditDate;
  /// Asnwer id in this question
  final int acceptedAnswerId;

  @override
  List<Object> get props => [
        tags,
        owner,
        isAnswered,
        viewCount,
        answerCount,
        score,
        lastActivityDate,
        creationDate,
        questionId,
        link,
        title,
        lastEditDate,
        acceptedAnswerId,
      ];
}
