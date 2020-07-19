# flutter_i18n
flutter i18n library



## 설치

* 먼저 iOS 에서 Info.plist 에 아래을 추가한다.
  * Android 에서는 아무것도 할 것 없다.

``` xml
	<key>CFBundleLocalizations</key>
	<array>
		<string>en</string>
		<string>ko</string>
		<string>ja</string>
		<string>zh</string>
	</array>
```

* 그리고 main.dart 의 Root App Widget 의 initState() 에서 아래와 같이 초기화 한다.

``` dart
@override
void initState() {
  () async {
    await I18n.init();
    setState(() {});
  }();
  super.initState();
}
```


## 사용예

* 아래와 같이 정의 해 놓고,

``` dart
import 'package:englishfun_v2/flutter_i18n/locale.dart';

class Tx {
  static String get appName => t({'ko': '영어야 놀자', 'en': 'English Fun'});
}

```

* 아래와 같이 쓰면 된다.

``` dart
Text(Tx.appName),
```
