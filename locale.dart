import 'package:devicelocale/devicelocale.dart';

/// 글 번역
///
class I18n {
  /// [locale]
  /// ``` dart
  /// I18n.locale;
  /// ```
  static String locale;

  /// [forceLocale] 이 값이 설정되어져 있으면, 해당 언어로만 표시를 한다.
  /// 예) 'en', 'ko'
  /// @example
  /// ``` dart
  /// I18n.forceLocale = 'ko';
  /// ```
  static String forceLocale;

  /// 앱이 부팅 될 때, 이 함수를 한번 호출 해 주어야 한다.
  static Future<String> init() async {
    // List languages = await Devicelocale.preferredLanguages;
    String current = await Devicelocale.currentLocale;
    locale = current.substring(0, 2);
    return locale;
  }
}

/// 기본 번역 단어 정보를 가지고 있다.
/// 필요하면 extends 해서 쓰면 된다.
// class T {
//   static var ok = {'ko': '확인', 'en': 'Ok'};
//   static var yes = {'ko': '예', 'en': 'Yes'};
//   static var no = {'ko': '아니오', 'en': 'No'};
// }

// String t(Map<String, dynamic> obj) {
//   String locale;
//   if (I18n.forceLocale != null)
//     locale = I18n.forceLocale;
//   else {
//     if (I18n.locale == null) return 'locale is null';
//     locale = I18n.locale;
//   }
//   return obj[locale] ?? '@no-translation';
// }
