// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_feedback.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserFeedbackCWProxy {
  UserFeedback id(String id);

  UserFeedback appName(String appName);

  UserFeedback body(String body);

  UserFeedback category(FeedbackCategory category);

  UserFeedback imageUrls(List<String> imageUrls);

  UserFeedback createdAt(DateTime createdAt);

  UserFeedback userId(String? userId);

  UserFeedback username(String? username);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserFeedback(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserFeedback(...).copyWith(id: 12, name: "My name")
  /// ````
  UserFeedback call({
    String? id,
    String? appName,
    String? body,
    FeedbackCategory? category,
    List<String>? imageUrls,
    DateTime? createdAt,
    String? userId,
    String? username,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserFeedback.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserFeedback.copyWith.fieldName(...)`
class _$UserFeedbackCWProxyImpl implements _$UserFeedbackCWProxy {
  const _$UserFeedbackCWProxyImpl(this._value);

  final UserFeedback _value;

  @override
  UserFeedback id(String id) => this(id: id);

  @override
  UserFeedback appName(String appName) => this(appName: appName);

  @override
  UserFeedback body(String body) => this(body: body);

  @override
  UserFeedback category(FeedbackCategory category) => this(category: category);

  @override
  UserFeedback imageUrls(List<String> imageUrls) => this(imageUrls: imageUrls);

  @override
  UserFeedback createdAt(DateTime createdAt) => this(createdAt: createdAt);

  @override
  UserFeedback userId(String? userId) => this(userId: userId);

  @override
  UserFeedback username(String? username) => this(username: username);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserFeedback(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserFeedback(...).copyWith(id: 12, name: "My name")
  /// ````
  UserFeedback call({
    Object? id = const $CopyWithPlaceholder(),
    Object? appName = const $CopyWithPlaceholder(),
    Object? body = const $CopyWithPlaceholder(),
    Object? category = const $CopyWithPlaceholder(),
    Object? imageUrls = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? username = const $CopyWithPlaceholder(),
  }) {
    return UserFeedback(
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
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime,
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

extension $UserFeedbackCopyWith on UserFeedback {
  /// Returns a callable class that can be used as follows: `instanceOfUserFeedback.copyWith(...)` or like so:`instanceOfUserFeedback.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserFeedbackCWProxy get copyWith => _$UserFeedbackCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserFeedback _$UserFeedbackFromJson(Map<String, dynamic> json) => UserFeedback(
      id: json['id'] as String,
      appName: json['app_name'] as String,
      body: json['body'] as String,
      category: $enumDecode(_$FeedbackCategoryEnumMap, json['category']),
      imageUrls: (json['image_urls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      createdAt: const DateTimeConverter().fromJson(json['created_at']),
      userId: json['user_id'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$UserFeedbackToJson(UserFeedback instance) =>
    <String, dynamic>{
      'id': instance.id,
      'app_name': instance.appName,
      'body': instance.body,
      'user_id': instance.userId,
      'username': instance.username,
      'category': _$FeedbackCategoryEnumMap[instance.category]!,
      'image_urls': instance.imageUrls,
      'created_at': const DateTimeConverter().toJson(instance.createdAt),
    };

const _$FeedbackCategoryEnumMap = {
  FeedbackCategory.enhancement: 'enhancement',
  FeedbackCategory.bug: 'bug',
};
