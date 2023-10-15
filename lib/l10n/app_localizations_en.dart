import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get feedbackTitle => 'Feedback';

  @override
  String get enhancement => 'Enhancement';

  @override
  String get bugReport => 'Report bug';

  @override
  String get bodyEditTextHint => 'Input here';

  @override
  String get sendButton => 'Send';

  @override
  String maxImagesWarning(int maxImages) {
    return 'Only max $maxImages images can be uploaded.';
  }

  @override
  String imageCounter(int currentLength, int maxImages) {
    return 'Images ($currentLength/$maxImages)';
  }

  @override
  String get enhancementButton => '🙏 Enhancement';

  @override
  String get bugButton => '🚨 Report bug';

  @override
  String get emptyBodyWarning => 'Please input text.';

  @override
  String get complete => 'Complete';

  @override
  String get failWarning => 'Something went wrong.\nPlease try again.';

  @override
  String get selectCategoryWarning => 'Please, select category.';
}
