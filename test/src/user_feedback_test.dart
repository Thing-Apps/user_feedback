// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:user_feedback/src/feedback_category.dart';
import 'package:user_feedback/src/user_feedback.dart';

void main() {
  group('UserFeedback', () {
    final feedback = UserFeedback(
      appName: 'appName',
      body: 'body',
      category: FeedbackCategory.bug,
      imageUrls: [],
      userId: 'userId',
      username: 'username',
      createdAt: DateTime.now(),
      id: 'id',
    );
    test('can be instantiated', () {
      expect(
        feedback,
        isNotNull,
      );
    });

    test('can be converted to json', () {
      expect(
        feedback.toJson(),
        isInstanceOf<Map<String, dynamic>>(),
      );
    });

    test('can be instantiated from json', () {
      final feedbackJson = feedback.toJson();

      expect(
        UserFeedback.fromJson(feedbackJson),
        isInstanceOf<UserFeedback>(),
      );
    });
  });
}
