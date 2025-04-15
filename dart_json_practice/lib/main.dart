import 'dart:convert';

void main() {
  print('✅ [1] 기본 JSON 직렬화 및 역직렬화');
  basicJsonExample();

  print('\n✅ [2] User 클래스 직렬화/역직렬화');
  classConversionExample();

  print('\n✅ [3] Pet 클래스 예제 (단일 JSON)');
  petExample();

  print('\n✅ [4] Pet + Contact 클래스 예제 (중첩 JSON)');
  nestedJsonExample();
}

// [1] 기본 Map ↔ JSON 변환
void basicJsonExample() {
  Map<String, dynamic> myInfo = {"name": "이지원", "age": 20};

  String jsonString = jsonEncode(myInfo);
  print('직렬화: $jsonString');

  String jsonInput = '{"name": "이지원", "age": 20}';
  Map<String, dynamic> result = jsonDecode(jsonInput);
  print('역직렬화: $result');
}

// [2] User 클래스 활용
void classConversionExample() {
  String jsonString = '{"name": "이지원", "age": 20}';
  var jsonMap = jsonDecode(jsonString);
  User user = User.fromJson(jsonMap);
  print('User 객체: ${user.name}, ${user.age}');
  print('User → JSON: ${user.toJson()}');
}

class User {
  String name;
  int age;

  User({required this.name, required this.age});

  User.fromJson(Map<String, dynamic> map)
    : name = map['name'],
      age = map['age'];

  Map<String, dynamic> toJson() {
    return {"name": name, "age": age};
  }
}

// [3] Pet 클래스 예제
void petExample() {
  String jsonString = '''
  {
    "name": "오상구",
    "age": 7,
    "isMale": true
  }
  ''';

  Map<String, dynamic> map = jsonDecode(jsonString);
  Pet pet = Pet.fromJson(map);
  print('Pet → JSON: ${pet.toJson()}');
}

class Pet {
  String name;
  int age;
  bool isMale;

  Pet({required this.name, required this.age, required this.isMale});

  Pet.fromJson(Map<String, dynamic> json)
    : name = json["name"],
      age = json["age"],
      isMale = json["isMale"];

  Map<String, dynamic> toJson() {
    return {"name": name, "age": age, "isMale": isMale};
  }
}

// [4] 중첩 JSON: Pet + Contact
void nestedJsonExample() {
  String jsonString = '''
  {
    "name": "오상구",
    "age": 7,
    "isMale": true,
    "favorite_foods": ["삼겹살", "연어", "고구마"],
    "contact": {
      "mobile": "010-0000-0000",
      "email": null
    }
  }
  ''';

  Map<String, dynamic> map = jsonDecode(jsonString);
  PetFull pet = PetFull.fromJson(map);
  print('PetFull → JSON: ${pet.toJson()}');
}

class PetFull {
  final String name;
  final int age;
  final bool isMale;
  final List<String> favoriteFoods;
  final Contact contact;

  PetFull({
    required this.name,
    required this.age,
    required this.isMale,
    required this.favoriteFoods,
    required this.contact,
  });

  PetFull.fromJson(Map<String, dynamic> json)
    : name = json["name"],
      age = json["age"],
      isMale = json["isMale"],
      favoriteFoods = List<String>.from(json["favorite_foods"]),
      contact = Contact.fromJson(json["contact"]);

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "age": age,
      "isMale": isMale,
      "favorite_foods": favoriteFoods,
      "contact": contact.toJson(),
    };
  }
}

class Contact {
  final String mobile;
  final String? email;

  Contact({required this.mobile, required this.email});

  Contact.fromJson(Map<String, dynamic> json)
    : mobile = json["mobile"],
      email = json["email"];

  Map<String, dynamic> toJson() {
    return {"mobile": mobile, "email": email};
  }
}
