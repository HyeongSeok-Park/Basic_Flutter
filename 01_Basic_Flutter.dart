/* 스타일 */
- MaterialApp() : 구글 스타일
- CupertinoApp() : IOS 스타일

/* theme 활용 */
1) theme 불러오기 및 설정
MaterialApp(
        theme = ThemeData(
          canvasColor: const Color(0xFFE7626C), // 색상표현방법1
          textTheme: const TextTheme(
            headlineLarge: TextStyle(
              color: Colors.red,  // 색상표현방법2
            ),
          ),
          cardColor: const Color.fromARGB(255, 255, 255, 255),  // 색상표현방법3
        ),
        home = const HomeScreen(), 
        // home에 작성될 내용들을 theme에서 미리 설정을 지정.
        // text 스타일, color ...
      );

2) 색상 적용 - Theme.of(context).(컬러변수명)
Theme.of(context).textTheme.headlineLarge.color ; 컬러변수가 저장된 위치를 끝까지 적어준다.

/* Flexible 활용 */
Flexible(
            flex = 1,
            child = Container(  // Container를 활용하여 공간 구분 확인
              decoration: const BoxDecoration( // decoration을 활용하여 style 설정
                color: Colors.amber,
              ),
            ),
          )

/* Row / Column */
1) Expanded : row / column의 자식으로, expanded 사용시 좌/우 화면 끝까지 확장
- Row(children = [Expanded(child: Container())]) : 좌우로 Container 끝까지 확장

/* Timer 활용 */
- Timer.periodic(const Duration(seconds = 1), 메소드); 1초마다 메소드 실행
- timer.cancel(); 이전에 수행한 Timer.periodic를 취소함.

/* Widget 활용 */

/** TextField */
- TextEditingController 메소드명 = TextEditingController(); 사용자가 입력한 text를 가져옴.

/** showDialog & AlertDialog */
- void _showInputDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          TextEditingController inputController = TextEditingController();
          return AlertDialog(
            title: const Text('Enter Time'),
            content: TextField(
              controller: inputController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Seconds',
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  int inputSeconds =
                      int.tryParse(inputController.text) ?? initTime;
                  setState(() {
                    startTime = inputSeconds;
                  });
                  Navigator.pop(context);
                },
                child: const Text('OK'),
              ),
            ],
          );
        });
  }
  // 메인 Widget에서 GestureDetector 사용 실행 함수로 사용.
  child: GestureDetector(
              onTap = () {
                _showInputDialog(context);
              },
              child = Container(
                alignment: Alignment.bottomCenter,
                child: Text(
                  format(startTime),
                  style: TextStyle(
                    color: Theme.of(context).cardColor,
                    fontSize: 89,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),