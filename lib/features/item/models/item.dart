/// 아이템을 나타내는 모델 클래스
class Item {
  static int _nextId = 1;

  int id; // 아이템 ID
  String name; // 아이템 이름
  String description; // 아이템 설명
  String imageUrl; // 아이템 이미지 URL
  int count; // 아이템 개수
  double price; // 아이템 가격

  Item({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.count,
    required this.price,
  }) : id = _nextId++; // 자동으로 ID 늘어나게 설정
}

final List<Item> dummyItems = [
  Item(
    name: 'Potion',
    description: '회복 아이템 특가 세일합니다',
    imageUrl: 'https://picsum.photos/1024/1024',
    count: 10,
    price: 100,
  ),
  Item(
    name: 'Pokéball',
    description: '포켓몬을 잡을 수 있어요',
    imageUrl: 'https://picsum.photos/1024/1024',
    count: 100,
    price: 2000,
  ),
  Item(
    name: '피카츄',
    description: '정들었지만 이제 떠나보내겠습니다.',
    imageUrl: 'https://picsum.photos/1024/1024',
    count: 1,
    price: 50000,
  ),
  Item(
    name: '감기걸린 리자몽',
    description:
        '3년째 콧물을 달고 사는 리자몽입니다.\n'
        '불을 뿜는 대신 콧물 하이드로펌프를 사용합니다.\n'
        '불 타입임에도 돌타입에 강한 자신감을 보이지만 실제로는 어림도 없습니다. 그러나 전기타입에는 확실히 취약합니다.\n'
        '주의사항 : 하루에 감기약 한 알씩 반드시 먹여야 합니다.\n'
        '감기약을 안 먹일 경우 열이 올라 불을 뿜습니다.',
    imageUrl: 'https://picsum.photos/1024/1024',
    count: 6,
    price: 89000,
  ),
];
