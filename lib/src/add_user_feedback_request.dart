import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:user_feedback/src/feedback_category.dart';

part 'add_user_feedback_request.g.dart';

/// {@template user_feedback}
/// A package for user feedback
/// {@endtemplate}
@CopyWith()
@JsonSerializable(explicitToJson: true)
class AddUserFeedbackRequest {
  /// {@macro user_feedback}

  AddUserFeedbackRequest({
    required this.id,
    required this.appName,
    required this.body,
    required this.category,
    required this.imageUrls,
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

  Map<String, dynamic> toJson() => _$AddUserFeedbackRequestToJson(this);

  static AddUserFeedbackRequest fromJson(Map<String, dynamic> json) =>
      _$AddUserFeedbackRequestFromJson(json);
}


