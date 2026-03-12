// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_user_feedback_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AddUserFeedbackRequestCWProxy {
  AddUserFeedbackRequest id(String id);

  AddUserFeedbackRequest appName(String appName);

  AddUserFeedbackRequest body(String body);

  AddUserFeedbackRequest category(FeedbackCategory category);

  AddUserFeedbackRequest imageUrls(List<String> imageUrls);

  AddUserFeedbackRequest userId(String? userId);

  AddUserFeedbackRequest username(String? username);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AddUserFeedbackRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AddUserFeedbackRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  AddUserFeedbackRequest call({
    String id,
    String appName,
    String body,
    FeedbackCategory category,
    List<String> imageUrls,
    String? userId,
    String? username,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAddUserFeedbackRequest.copyWith(...)` or call `instanceOfAddUserFeedbackRequest.copyWith.fieldName(value)` for a single field.
class _$AddUserFeedbackRequestCWProxyImpl
    implements _$AddUserFeedbackRequestCWProxy {
  const _$AddUserFeedbackRequestCWProxyImpl(this._value);

  final AddUserFeedbackRequest _value;

  @override
  AddUserFeedbackRequest id(String id) => call(id: id);

  @override
  AddUserFeedbackRequest appName(String appName) => call(appName: appName);

  @override
  AddUserFeedbackRequest body(String body) => call(body: body);

  @override
  AddUserFeedbackRequest category(FeedbackCategory category) =>
      call(category: category);

  @override
  AddUserFeedbackRequest imageUrls(List<String> imageUrls) =>
      call(imageUrls: imageUrls);

  @override
  AddUserFeedbackRequest userId(String? userId) => call(userId: userId);

  @override
  AddUserFeedbackRequest username(String? username) => call(username: username);

  @override

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AddUserFeedbackRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AddUserFeedbackRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  AddUserFeedbackRequest call({
    Object? id = const $CopyWithPlaceholder(),
    Object? appName = const $CopyWithPlaceholder(),
    Object? body = const $CopyWithPlaceholder(),
    Object? category = const $CopyWithPlaceholder(),
    Object? imageUrls = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? username = const $CopyWithPlaceholder(),
  }) {
    return AddUserFeedbackRequest(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      appName: appName == const $CopyWithPlaceholder() || appName == null
          ? _value.appName
          // ignore: cast_nullable_to_non_nullable
          : appName as String,
      body: body == const $CopyWithPlaceholder() || body == null
          ? _value.body
          // ignore: cast_nullable_to_non_nullable
          : body as String,
      category: category == const $CopyWithPlaceholder() || category == null
          ? _value.category
          // ignore: cast_nullable_to_non_nullable
          : category as FeedbackCategory,
      imageUrls: imageUrls == const $CopyWithPlaceholder() || imageUrls == null
          ? _value.imageUrls
          // ignore: cast_nullable_to_non_nullable
          : imageUrls as List<String>,
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String?,
      username: username == const $CopyWithPlaceholder()
          ? _value.username
          // ignore: cast_nullable_to_non_nullable
          : username as String?,
    );
  }
}

extension $AddUserFeedbackRequestCopyWith on AddUserFeedbackRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAddUserFeedbackRequest.copyWith(...)` or `instanceOfAddUserFeedbackRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AddUserFeedbackRequestCWProxy get copyWith =>
      _$AddUserFeedbackRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddUserFeedbackRequest _$AddUserFeedbackRequestFromJson(
        Map<String, dynamic> json) =>
    AddUserFeedbackRequest(
      id: json['id'] as String,
      appName: json['app_name'] as String,
      body: json['body'] as String,
      category: $enumDecode(_$FeedbackCategoryEnumMap, json['category']),
      imageUrls: (json['image_urls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      userId: json['user_id'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$AddUserFeedbackRequestToJson(
        AddUserFeedbackRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'app_name': instance.appName,
      'body': instance.body,
      'user_id': instance.userId,
      'username': instance.username,
      'category': _$FeedbackCategoryEnumMap[instance.category]!,
      'image_urls': instance.imageUrls,
    };

const _$FeedbackCategoryEnumMap = {
  FeedbackCategory.enhancement: 'enhancement',
  FeedbackCategory.bug: 'bug',
};
