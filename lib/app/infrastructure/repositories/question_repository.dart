import 'dart:io';

import 'package:meta/meta.dart';

import '../../../common/common.dart';
import '../../domain/domain.dart';
import '../../infrastructure/infrastructure.dart';
import '../models/model.dart';

class QuestionRepository implements QuestionInterface {
  final Connectivity connectivity;
  final QuestionRemoteDataProvider questionRemoteDataProvider;
  final QuestionLocalDataProvider questionLocalDataProvider;

  QuestionRepository({
    @required this.connectivity,
    @required this.questionRemoteDataProvider,
    @required this.questionLocalDataProvider,
  });

  @override
  Future<QuestionsResponseModel> getHotQuestions() async {
    if (await connectivity.isConnected) {
      try {
        QuestionsResponseModel _questions;
        _questions = await questionRemoteDataProvider.getHotQuestions();
        questionLocalDataProvider.setCacheHotQuestion(_questions);
        return _questions;
      } catch (e) {
        throw HttpException(e);
      }
    } else {
      final QuestionsResponseModel questions =
          await questionLocalDataProvider.getHotQuestions();
      return questions;
    }
  }
}
