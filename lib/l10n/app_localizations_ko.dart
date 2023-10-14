import 'app_localizations.dart';

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get feedbackTitle => '의견 보내기';

  @override
  String get enhancement => '서비스 제안';

  @override
  String get bugReport => '오류 신고';

  @override
  String get bodyEditTextHint => '내용을 입력해주세요';

  @override
  String get sendButton => '작성하기';

  @override
  String maxImagesWarning(int maxImages) {
    return '사진은 $maxImages개가 최대 입니다.';
  }

  @override
  String imageCounter(int currentLength, int maxImages) {
    return '사진 ($currentLength/$maxImages)';
  }

  @override
  String get enhancementButton => '🙏 서비스 제안';

  @override
  String get bugButton => '🚨 오류 신고';

  @override
  String get emptyBodyWarning => '내용을 입력 해주세요.';

  @override
  String get complete => '완료';

  @override
  String get failWarning => '실패 했습니다.\n다시 시도해주세요.';
}
