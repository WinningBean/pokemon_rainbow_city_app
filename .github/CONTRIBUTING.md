# 🛠 Contributing Guide for pokemon_rainbow_city_app

감사합니다! 이 프로젝트에 함께 해주셔서 감사합니다. 아래의 가이드를 따라 올바른 방식으로 협업해주세요.

---

## ✅ 브랜치 전략

- **기본 브랜치**: `develop`
- **기능 개발 브랜치**: `feature/기능명`
  - 예시: `feature/home`, `feature/item_list`

> ⚠️ `main` 브랜치는 릴리즈 전용입니다. 직접 push하지 마세요.

### 브랜치 병합 흐름

- `feature/*` → `develop` 으로 PR 보냅니다.
- 오류 없는 상태에서 `develop` → `main`으로 병합합니다.
- 이슈 관리를 위해 `issue` 기능을 활용합니다.

---

## 📦 프로젝트 초기 세팅 (VSCode 기준)

### 1. 프로젝트 클론

```bash
git clone https://github.com/WinningBean/pokemon_rainbow_city_app.git
cd pokemon_rainbow_city_app
git checkout develop
```

### 2. FVM 설치 (최초 1회만)

```bash
dart pub global activate fvm
```

### 3. Flutter 버전 설치 및 연결

```bash
fvm install
fvm use
```

### 4. VSCode 설정 연동

`.vscode/settings.json`에 아래가 포함되어 있어야 합니다:

```json
{
  "dart.flutterSdkPath": ".fvm/flutter_sdk"
}
```

### 5. 패키지 설치 및 실행

```bash
fvm flutter pub get
fvm flutter run
```

> 모든 Flutter 명령어는 `fvm flutter`로 실행합니다.

---

## 🧾 커밋 메시지 규칙

'[gitmoji](https://gitmoji.dev/) 커밋 타입: 설명'형식 권장

### 예시

- ✨ feat: 로그인 화면 UI 구현
- 🐛 fix: 버튼 클릭 시 오류 수정
- 🔧 chore: 폴더 구조 초기 세팅
- 📝 docs: README 및 기여 가이드 작성

### 커밋 타입

| 타입       | 설명                           |
| ---------- | ------------------------------ |
| `feat`     | 기능 추가                      |
| `fix`      | 버그 수정                      |
| `refactor` | 리팩토링                       |
| `design`   | UI 스타일 변경                 |
| `comment`  | 주석 추가/수정                 |
| `style`    | 포맷 변경 (비즈니스 로직 없음) |
| `docs`     | 문서 작성 및 수정              |
| `test`     | 테스트 코드 추가/수정          |
| `chore`    | 패키지, 설정, 빌드 관련        |
| `init`     | 초기 생성                      |
| `rename`   | 리네이밍 및 이동               |
| `remove`   | 삭제 작업만 수행한 경우        |

- 커밋 메시지는 **50자 이내**로 간결하게 작성합니다.
- 설명이 필요한 경우 **description**을 하단에 추가로 작성합니다.

---

## 🧱 프로젝트 구조 및 네이밍 규칙

### 기능 폴더 구조

- `features/기능명/` 구조로 개발합니다.
- 각 기능 내 전용 위젯은 `widgets/` 폴더에 위치합니다.
- 공통 위젯은 `common/widgets/`, 공통 상수·헬퍼는 `core/`에 위치합니다.

```
lib/
├── common/
│   ├── helpers/         # 공용 헬퍼
│   └── widgets/            # 모든 기능에서 공통으로 사용하는 UI 컴포넌트
├── core/
│   ├── constants/          # 상수
│   └── theme/              # 색상, 폰트, 테마 등 디자인 관련 정의
├── features/
│   └── item/
│       ├── item_list/
│       ├── item_add/
│       ├── item_detail/
│       │   └── widgets/    # item_detail 전용 UI 컴포넌트
│       └── widgets/        # item 공통 UI 컴포넌트
```

---

## 💡 코딩 컨벤션

- 모든 코딩 스타일은 [Dart 공식 스타일 가이드](https://dart.dev/effective-dart/style)를 기본으로 따릅니다.

### 네이밍 규칙

- 파일명: `snake_case.dart`
- 클래스, enum: `UpperCamelCase`
- 변수명: `camelCase`
- private 변수: `_camelCase`
- bool 변수/함수: `is`, `has` 등으로 시작

### 작성 규칙

- 들여쓰기는 `tab` 사용
- 메서드는 동사형, 변수는 명사형
- 주석은 **한국어로**, 클래스/메서드는 `///`, 기타는 `//` 사용
- 재사용성과 확장성을 고려해 **feature-first 구조**로 파일을 분리합니다

### 추천 설정

- VSCode 사용자라면 아래 설정을 권장합니다:

  ```json
  {
    "editor.formatOnSave": true,
    "dart.lineLength": 100
  }
  ```
