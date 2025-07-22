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
