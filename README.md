개인적으로 공부하며 느낀 자주 사용되는 명령어 정리

# 01_Basic_Flutter

- MaterialApp() : 구글 스타일
- CupertinoApp() : IOS 스타일

## Theme 활용
1) theme 불러오기 및 설정 - theme: ThemeData(cardColor / textTheme / ... )
2) 색상 적용 - Theme.of(context).(컬러변수명)

## Flexible 활용
- Flexible(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
            ),
          )

## Row / Column 활용
1) Expanded - Row/Column에서 활용 시 좌우/상하로 끝까지 크기 확장

## Timer 활용
- Timer.periodic(const Duration(seconds: 1), 메소드);
- timer.cancel();

## Widget 활용
- TextEditingController 메소드명 = TextEditingController();
- showDialog & AlertDialog

# 사용환경
VSCode
