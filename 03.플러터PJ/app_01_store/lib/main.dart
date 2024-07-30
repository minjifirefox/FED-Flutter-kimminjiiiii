import 'package:flutter/material.dart';
// 보통 material.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  // @override는 기존 클래스를 재정의 함을 표시!
  // 오버라이드는 재정의, 오버로드는 동명의 메서드 다중정의
  @override
  // 최상위위젯 : 전체 틀을 잡아줌
  // 모든 기본 단위 위젯은 리턴 코드를 가짐!
  Widget build(BuildContext context) {
    return MaterialApp(
      // "DEBUG" 글자 오른쪽 상단 글자 없앰
      debugShowCheckedModeBanner: false,
      // 탭바에 출력되는 타이틀
      title: 'STORE APP',
      // 필요시 디자인 테마 적용
      theme: ThemeData(),
      // home에 작성하는 위젯이 실제 이 앱이 표시하는 위젯임!
      home: StorePage(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// StorePage 클래스 만들기!!! //////////////
// -> 비상태관리위젯 단축키 : stl
class StorePage extends StatelessWidget {
  // 기본적으로 생성자 메서드에서 부모키를 셋업함!
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    // BuildContext 클래스는 위젯 묶음을 만들어주는 역할을 함
    // 리턴 코드 : 스케폴드 클래스로 비상태관리 코드를 만들어준다!
    return Scaffold(
      // 상단영역 아래 body 파트를 표시하는 속성
      // SafeArea 위젯은 기기별 맞춤 설정해줌
      body: SafeArea(
        // 앱의 기본 방향 시작은 세로 방향임
        // (Column이다!-Row를 포함한다!)
        // body의 구성요소는 child속성으로 표현!
        child: Column(
          // children 속성은 컬럼하위요소들임!
           /*
            [ Padding 위젯 ]
              padding: EdgeInsets.all(4방향전체),
              padding: EdgeInsets.only(left/top/right/bottom특정방향만),
              padding: EdgeInsets.symmetric(수직/수평중),
           */
          children: [
            Padding(padding: EdgeInsets.all(25.0),
            // 패딩 안에 child 속성으로 Row 위젯 표현
            // Row 위젯 - 가로방향 위젯요소 넣기
            child: Row(
              // children 속성은 Row 하위 요소들임!
              children: [
                // 글자는 Text 위젯!
                Text(
                  "Woman",
                  // style 속성에 글자 속성은 TextStyle()
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                Spacer(), // 사이 간격 일정하게 해줌
                Text(
                  "Kids",
                  // style 속성에 글자 속성은 TextStyle()
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                Spacer(), // 사이 간격 일정하게 해줌
                // 로고 이미지 추가! 이미지 위젯 사용!
                // pubspec.yaml 환경설정파일에
                // assets 속성에 병도의 경로 세팅이 없으면
                // 기본적으로 root 아래 assets 폴더의
                // 이미지를 가져옴!
                Image.asset(
                  'logo.png', // 이미지 명
                  width: 70.0, // 이미지 가로 크기
                ),
                Spacer(),
                Text(
                  "Shoes",
                  // style 속성에 글자 속성은 TextStyle()
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                Spacer(), // 사이 간격 일정하게 해줌
                Text(
                  "Bag",
                  // style 속성에 글자 속성은 TextStyle()
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            ),
            // 하단 이미지 추가하기
            // Expanded 위젯 - flex 속성이 있어서 등분할 함!
            Expanded(
              child: Image.asset(
                "bag.jpeg", // 이미지 경로 명
                fit: BoxFit.cover, // 이미지 박스 채움
              )
            ),
            // 이미지 사이 간격은 빈 박스로 조정함
            // 가로 간격은 width 속성, 세로 간격은 height 속성 사용!
            SizedBox(
              height: 5.0,
            ),
            Expanded(
              child: Image.asset(
                "cloth.jpeg", // 이미지 경로 명
                fit: BoxFit.cover, // 이미지 박스 채움
              )
            ),
          ],
        ),
      ),
    );
  }
}
