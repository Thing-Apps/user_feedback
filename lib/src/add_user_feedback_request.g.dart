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

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AddUserFeedbackRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AddUserFeedbackRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  AddUserFeedbackRequest call({
    String? id,
    String? appName,
    String? body,
    FeedbackCategory? category,
    List<String>? imageUrls,
    String? userId,
    String? username,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAddUserFeedbackRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAddUserFeedbackRequest.copyWith.fieldName(...)`
class _$AddUserFeedbackRequestCWProxyImpl
    implements _$AddUserFeedbackRequestCWProxy {
  const _$AddUserFeedbackRequestCWProxyImpl(this._value);

  final AddUserFeedbackRequest _value;

  @override
  AddUserFeedbackRequest id(String id) => this(id: id);

  @override
  AddUserFeedbackRequest appName(String appName) => this(appName: appName);

  @override
  AddUserFeedbackRequest body(String body) => this(body: body);

  @override
  AddUserFeedbackRequest category(FeedbackCategory category) =>
      this(category: category);

  @override
  AddUserFeedbackRequest imageUrls(List<String> imageUrls) =>
      this(imageUrls: imageUrls);

  @override
  AddUserFeedbackRequest userId(String? userId) => this(userId: userId);

  @override
  AddUserFeedbackRequest username(String? username) => this(username: username);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AddUserFeedbackRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AddUserFeedbackRequest(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfAddUserFeedbackRequest.copyWith(...)` or like so:`instanceOfAddUserFeedbackRequest.copyWith.fieldName(...)`.
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
