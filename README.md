# Flutter MVVM Counter App 💡

Flutter에서 MVVM 아키텍처를 직접 실습해본 간단한 카운터 앱입니다.  
**View / ViewModel / Model** 구조를 구분하여 코드의 역할과 흐름을 명확히 이해할 수 있도록 구성했습니다.

---

## 📁 프로젝트 구조

 
 ```
flutter_mvvm_counter/
├── lib/
 │ ├── main.dart # 앱 실행 진입점
 │ ├── view/
 │ │ └── counter_screen.dart # UI 구성 (View)
 │ ├── view_model/
 │ │ └── counter_view_model.dart # 상태 관리 (ViewModel)
 │ └── model/
 │ └── counter_model.dart # 데이터 구조 (필요 시 사용)
 ├── pubspec.yaml
 └── README.md

 ```
 
 

---

## ✨ 주요 학습 내용

| 구성요소     | 설명 |
|--------------|------|
| **View**      | 사용자 인터페이스 (Flutter 위젯) |
| **ViewModel** | 상태 관리 및 로직 처리. UI와 분리된 비즈니스 계층 |
| **Model**     | 데이터 구조 정의. 현재 예제에서는 단순한 정수값으로 대체 가능 |

Flutter에서 MVVM 아키텍처를 적용하면 다음과 같은 장점이 있습니다:

- UI 로직과 상태 관리를 분리하여 **가독성 향상**
- 각 계층이 명확하므로 **유지보수 및 테스트 용이**
- 재사용 가능한 ViewModel 구성 가능

---

## 🚀 실행 방법

1. Flutter SDK가 설치되어 있는지 확인하세요  
   👉 [Flutter 설치 안내](https://docs.flutter.dev/get-started/install)

2. 저장소를 클론합니다:

```bash
git clone https://github.com/your-username/flutter_mvvm_counter.git
cd flutter_mvvm_counter

 ```

 ---
 ##  📸 앱 예시 화면
버튼 클릭 시 카운트 증가 및 초기화
ChangeNotifierProvider + Consumer로 ViewModel의 상태를 구독

css
복사
편집
[+] 버튼을 누르면 숫자가 올라갑니다
[↺] 버튼을 누르면 0으로 초기화됩니다

 ---

 ## 📚 더 자세한 내용은 블로그에서 확인하세요!
MVVM 구조를 배우며 느낀 점, 시행착오, 구조적 이점 등을 정리한 블로그 포스팅입니다.
앱 아키텍처를 처음 접하는 분들께 추천드려요.

🔗 블로그 포스팅
[👉 Flutter에서 MVVM 아키텍처를 제대로 이해해보기 💡]


 ---

 
 ## 🛠 사용 기술
 
 - VSCode + Dart CLI
 - dart:convert 라이브러리 (jsonEncode, jsonDecode)
 - Flutter 3.7
 - Dart
 - Cupertino-style Dialog
 - Git & GitHub
 
 ---
 
 ## 👨‍💻 개발자
 - GitHub: [Linayoo01](https://github.com/Linayoo01)
