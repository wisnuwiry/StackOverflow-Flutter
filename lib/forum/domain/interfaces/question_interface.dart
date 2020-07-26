import '../../infrastructure/models/question_response_model.dart';

abstract class QuestionInterface{
  Future<QuestionsResponseModel> getHotQuestions();
}