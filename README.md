# 🌈 pokemon_rainbow_city_app

포켓몬 세계관을 테마로 한 Flutter 기반 거래 앱입니다.
홈 화면부터 아이템 등록/조회/상세 기능까지, 테마성 있는 디자인과 반응형 UI, 다국어 기능을 갖춘 쇼핑몰 플랫폼 앱입니다.

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
│   ├── fonts/               # 커스텀 폰트 및 아이콘 폰트 파일 (.ttf) 위치
│   │   ├── custom_icons.ttf
│   │   └── pf_stardust_bold.ttf
│   └── images               # 아이콘 이미지 파일 (.png) 위치
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

이 앱은 포켓몬 세계관을 테마로 한 거래 플랫폼입니다.
현재는 테스트용 MVP 단계로, 아래와 같은 기능이 제공됩니다.

---

### 🏠 홈 화면

- 로켓단 일러스트와 함께 앱의 세계관을 소개
- '포켓몬 사러가기' 버튼을 통해 아이템 목록 화면으로 이동
- 마스터볼, 말풍선 등의 그래픽 요소 포함
- 다양한 디바이스에서도 비율에 맞춰 표시되도록 반응형 UI 구현

---

### 📦 아이템 목록

- 등록된 포켓몬 아이템들을 리스트로 확인할 수 있습니다.
- 아이템 이름, 가격, 수량, 이미지, 거래 가능 여부 등의 정보를 볼 수 있습니다.
- 원하는 아이템을 클릭하면 상세 정보 페이지로 진입합니다
- '+' 아이콘을 클릭시 아이템 등록 페이지로 이동할 수 있습니다.
- 상품이 없을 경우 “상품이 없습니다.” 메시지가 표시됩니다.

---

### 🔍 아이템 상세 페이지

- 포켓몬 이미지, 상품 설명, 가격, 수량 조절 등 상세 UI를 제공합니다.
- 구매 팝업을 통해 수량 입력 후 구매 가능 (1~99 제한)
- 총 가격을 수량에 따라 자동 계산 합니다.
- 구매 취소 또는 완료 버튼 제공
- 구매 완료 시 홈 화면으로 돌아갑니다.

---

### ➕ 아이템 등록

- 사용자가 포켓몬 아이템을 직접 등록할 수 있습니다.
- 이미지 등록 방식 선택:
  - 로컬 이미지 업로드
  - 텍스트 입력
  - 샘플 링크 입력
- 상품명, 설명, 가격 필수 입력
- 필수 항목 누락 시 유효성 검사 및 경고 메시지 표시

---

### 🌐 다국어 지원

- 영어(intl_en.arb) 및 한국어(intl_ko.arb) 지원
- 디바이스 언어 설정에 따라 앱 내 텍스트가 자동 변경됩니다.
- flutter gen-l10n을 통한 자동화된 번역 코드 생성
- AppLocalizations 기반의 번역 키 적용
- 버튼, 경고 메시지, 상품 관련 텍스트 전반 다국어 처리 완료

---

### 💄 UI/UX 디자인 가이드

- PF스타더스트 폰트를 활용한 세계관 몰입 디자인
- 마스터볼, 말풍선 등 그래픽 요소 반응형 배치
- 기기 해상도에 따라 자동으로 텍스트, 버튼, 이미지 크기 조정
- MediaQuery 기반 비율 설계로 다양한 디바이스 대응

---

### 📌 기술 스택

- 개발 언어: Dart
- 프레임워크: Flutter 3.22+
- 상태관리: Riverpod (예정)
- UI: Material Design + 커스텀 애셋
- 아키텍처: 기능 중심 feature-first 구조
- 다국어 지원: Flutter Intl

---

> ℹ️ 현재 앱은 개발 초기 단계로, 추후 기능이 확장될 예정입니다.
> 정식 출시 전까지는 테스트 목적으로만 사용해주세요.
