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

## 🛠 개발 시작 순서

FVM을 사용하는 프로젝트이므로 아래 순서를 반드시 지켜주세요.

### 1. FVM 설치 (최초 1회만)

```bash
dart pub global activate fvm
```

### 2. 프로젝트에 지정된 Flutter 버전 설치

```bash
fvm install
```

> `.fvmrc` 파일에 명시된 Flutter 버전이 자동 설치됩니다.

### 3. FVM 버전 적용

```bash
fvm use
```

> 현재 프로젝트 디렉토리에 `.fvm/flutter_sdk`가 연결됩니다.

### 4. 패키지 설치 및 실행

```bash
fvm flutter pub get
fvm flutter run
```

> ⚠️ `flutter` 명령어 앞에는 반드시 `fvm`을 붙여주세요.  
> (VSCode에서 자동 설정된 경우 제외)

### 5. VSCode 연동 설정 (권장)

`.vscode/settings.json` 파일에 아래 내용 추가:

```json
{
  "dart.flutterSdkPath": ".fvm/flutter_sdk"
}
```

---

이렇게 하면 모든 팀원이 동일한 Flutter SDK 버전에서 개발할 수 있어 안정적인 협업이 가능합니다.
