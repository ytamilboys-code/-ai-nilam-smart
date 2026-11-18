# AI Nilam Smart

Flutter starter project for a Tamil/English land measurement assistant.

## Included in this starter
- Tamil-first home screen with English feature labels
- Rectangle/square land area calculator
- Conversions: sq ft, cent, ground (2,400 sq ft convention), acre, sq m
- Material 3 green theme
- Basic widget test
- GitHub Actions workflow for Flutter analyze and tests

## Not yet implemented
Patta/Chitta data access, FMB/official maps, offline MBTiles, PDF export, AI chat/voice,
authentication, cloud sync, analytics, ads, privacy-policy hosting, and production security.
Do not describe these features as available until implemented and tested.

## Run locally
1. Install Flutter stable and Android SDK.
2. Run `flutter pub get`
3. Run `flutter analyze`
4. Run `flutter test`
5. Run `flutter run`

## Android package ID
The current Android application ID must be set to the final unique ID before the first Play upload.
Suggested placeholder: `in.ainilamsmart.app` (check availability and confirm before release).

## Signed Android App Bundle
Create a private upload keystore locally; never commit it:
```bash
keytool -genkeypair -v -keystore upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload
```
Configure `android/key.properties` locally and wire it into `android/app/build.gradle` (Groovy) or
`build.gradle.kts` (Kotlin DSL), depending on the generated Flutter project. Keep both files out of Git.
Then build:
```bash
flutter build appbundle --release
```
Output: `build/app/outputs/bundle/release/app-release.aab`

## Release blockers
- Final package ID and developer listing details
- Verified privacy policy URL and Data safety answers
- App icon, feature graphic, screenshots
- Complete tested feature set and target API compliance
- Upload keystore and Play App Signing setup
- Play Console access and required testing track
