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

## 🗂️ 프로젝트 구조

```
pokemon_rainbow_city_app/
├── .fvm/                    # FVM에서 관리하는 Flutter SDK 경로 (.gitignore 대상)
├── assets/
│   └── fonts/               # 커스텀 폰트 및 아이콘 폰트 파일 (.ttf) 위치
│       ├── custom_icons.ttf
│       └── pf_stardust_bold.ttf
│
├── lib/
│   ├── common/
│   │   ├── helpers/         # 공용 헬퍼
│   │   └── widgets/         # 공용 버튼, 다이얼로그 위젯 등
│   │
│   ├── core/                # 전역 상수, 헬퍼, 아이콘, 테마 등 핵심 요소
│   │   ├── constants/       # 앱 전역 상수 관리
│   │   ├── icons/           # 커스텀 아이콘 정의
│   │   └── theme/           # 색상, 텍스트, 버튼 테마 관리
│   │
│   ├── features/            # 주요 도메인 기능별로 분리된 폴더
│   │   ├── home/            # 홈 화면 관련 UI 및 로직
│   │   │   └── home_page.dart
│   │   └── item/            # 아이템 관련 등록/조회/상세 화면
│   │       ├── itemAdd/     # 아이템 등록 관련 UI
│   │       │   └── item_add_page.dart
│   │       ├── itemDetail/  # 아이템 상세 정보 관련 UI
│   │       │   └── item_detail_page.dart
│   │       ├── itemList/    # 아이템 목록 관련 UI
│   │       │   └── item_list_page.dart
│   │       ├── models/      # 아이템 관련 모델 정의
│   │       │   └── item.dart
│   │       └── providers/   # 상태관리용 Provider 등 정의
│   │           └── item_providers.dart
│   │
│   ├── generated/           # 코드 자동 생성 파일 (intl 등)
│   ├── l10n/                # 다국어 번역을 위한 ARB 파일
│   └── main.dart            # 앱 진입점
│
├── .github/
│   └── CONTRIBUTING.md      # 팀 협업 및 브랜치 전략 가이드
│
├── analysis_options.yaml    # Dart 분석 룰 설정
├── l10n.yaml                # Flutter localization 설정
├── pubspec.yaml             # 패키지 의존성 및 에셋/폰트 설정
└── README.md                # 사용자 및 프로젝트 정보
```

---

## 🧑‍💻 개발자 전용 안내

> 개발자 및 팀원용 협업 가이드는 [`CONTRIBUTING.md`](./.github/CONTRIBUTING.md)를 참고해주세요.

---

## 👤 사용자 안내

이 앱은 포켓몬 세계관을 테마로 한 거래 서비스 앱입니다.  
현재는 아래 기능들을 중심으로 구현되고 있으며, 테스트 목적의 초기 버전입니다.

---

### 🏠 홈 화면

- 앱을 실행하면 가장 먼저 보이는 대표 화면입니다.
- 대표 이미지와 함께 주요 기능으로 이동할 수 있는 버튼들이 제공됩니다.
- 예: 상품 등록, 커뮤니티 이동 등

---

### 📦 아이템 목록

- 등록된 포켓몬 아이템들을 리스트로 확인할 수 있습니다.
- 아이템 이름, 가격, 거래 가능 여부 등의 정보를 볼 수 있고, 상세 페이지로 이동할 수 있습니다.
- 필터: 키워드 검색, 가격 범위로 필터링 가능
- 상품이 없을 경우 “상품이 없습니다.” 메시지가 표시됩니다.

---

### 🔍 아이템 상세 페이지

- 아이템을 클릭하면 상세 정보 페이지로 진입합니다.
- 포켓몬 이미지, 상품 설명, 가격, 수량 조절 등을 확인할 수 있습니다.
- 구매 팝업을 통해 수량 입력 후 구매 가능 (1~99 제한)
- 구매 취소 또는 완료 버튼 제공

---

### ➕ 아이템 등록

- 사용자가 포켓몬 아이템을 직접 등록할 수 있습니다.
- 이미지 등록 방식 선택:
  - 로컬 이미지 업로드
  - 텍스트 입력
  - 샘플 링크 입력
- 상품명, 설명, 가격 필수 입력
- 필수 항목 누락 시 경고 메시지 표시

---

> ℹ️ 현재 앱은 개발 초기 단계로, 추후 기능이 확장될 예정입니다.
> 정식 출시 전까지는 테스트 목적으로만 사용해주세요.
