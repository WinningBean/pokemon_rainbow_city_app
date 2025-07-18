# 🌈 pokemon_rainbow_city_app

Flutter 기반의 포켓몬 테마 앱입니다.  
앱의 구조, 테마, 커스텀 위젯, 폰트 및 다국어(Localization) 세팅이 완료된 초기 셋업 상태입니다.

---

## 🧱 초기 설정 항목

- **커스텀 테마 적용**
  - AppColors 및 ColorAlias 관리
  - Light / Dark Theme 대응
- **폰트**
  - `PF스타더스트 3.0 Bold.ttf` 적용 (`assets/fonts`)
- **아이콘**
  - `.ttf` 기반 커스텀 아이콘 (`custom_icons.dart`)
- **커스텀 버튼 위젯**
  - Filled / Outlined / Floating Action Button 컴포넌트화
- **다국어 지원**
  - `intl` 및 `l10n.yaml` 기반 i18n 구성
- **기초 디렉토리 구조**
  - `features`, `common`, `core`, `theme`, `generated` 등 도메인 중심 구조 설계

---

## 🛠 개발 시작 방법

```bash
flutter pub get
flutter run
```
