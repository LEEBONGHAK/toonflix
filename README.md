# toonflix

A new Flutter project.

## [네이버 웹툰 Unofficial API](https://webtoon-crawler.nomadcoders.workers.dev/)

- `/today`: Returns today's comics.
- `/:id`: Returns a comic's information by `:id`
- `/:id/episodes`: Returns the latest episodes for a comic by `:id`

Made by [nomadcoder](https://github.com/serranoarevalo) for [flutter education](https://nomadcoders.co/flutter-for-beginners)

## APK 빌드

터미널에 `flutter build apk --release --target-platform=android-arm64`

참고링크 : `https://gamestory2.tistory.com/215`

### 참고 사항

apk파일로 안드로이드폰에 설치했을때, 인터넷 권한 문제로 무한 로딩에 빠지는 현상을 보이는 경우

```xml
<uses-permisson android:name="android.permission.INTERNET" />
```

을 AndroidManifest.xml에 `application` 위에 추가하면 해결된다.

참고링크 : `https://happyguy81.tistory.com/151`
