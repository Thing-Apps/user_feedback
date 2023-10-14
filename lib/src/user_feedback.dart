import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:user_feedback/src/datetime_converter.dart';

import 'feedback_category.dart';

part 'user_feedback.g.dart';

/// {@template user_feedback}
/// A package for user feedback
/// {@endtemplate}
@DateTimeConverter()
@CopyWith()
@JsonSerializable(explicitToJson: true)
class UserFeedback {
  /// {@macro user_feedback}

  UserFeedback({
    required this.id,
    required this.appName,
    required this.body,
    required this.category,
    required this.imageUrls,
    required this.createdAt,
    this.userId,
    this.username,
  });


  final String id;
  @JsonKey(name: 'app_name')
  final String appName;
  final String body;
  @JsonKey(name: 'user_id')
  final String? userId;
  final String? username;
  final FeedbackCategory category;
  @JsonKey(name: 'image_urls')
  final List<String> imageUrls;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  Map<String, dynamic> toJson() => _$UserFeedbackToJson(this);

  static UserFeedback fromJson(Map<String, dynamic> json) =>
      _$UserFeedbackFromJson(json);
}
