import 'package:devicelocale/devicelocale.dart';

/// 글 번역
///
class I18n {
  /// [locale]
  static String locale;

  /// 앱이 부팅 될 때, 이 함수를 한번 호출 해 주어야 한다.
  static init() async {
    // List languages = await Devicelocale.preferredLanguages;
    String current = await Devicelocale.currentLocale;
    locale = current.substring(0, 2);
  }
}

/// 기본 번역 단어 정보를 가지고 있다.
/// 필요하면 extends 해서 쓰면 된다.
class T {
  static var ok = {'ko': '확인', 'en': 'Ok'};
  static var yes = {'ko': '예', 'en': 'Yes'};
  static var no = {'ko': '아니오', 'en': 'No'};
}

String t(Map<String, String> obj) {
  if (I18n.locale == null) return 'locale is null';
  return obj[I18n.locale];
}
