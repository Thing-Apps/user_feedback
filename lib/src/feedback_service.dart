import 'dart:io';

import 'package:user_feedback/src/add_user_feedback_request.dart';

abstract class FeedbackService {
  Future<void> addFeedback(AddUserFeedbackRequest feedback);

  Future<List<String>> addFeedbackImages({
    required String path,
    required List<File> fileList,
  });
}
