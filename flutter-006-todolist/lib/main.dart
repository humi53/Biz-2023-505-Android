import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todolist/models/todo.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StatefulWidget> createState() => _StartPage();
}

class _StartPage extends State<StartPage> {
  var todoList = [];
  // var todoList = [
  //   Todo(
  //     sdate: DateFormat("yyyy-MM-dd").format(DateTime.now()),
  //     stime: DateFormat("HH:ss:mm").format(DateTime.now()),
  //     content: "오늘은 금요일",
  //     complete: false,
  //   ),
  //   Todo(
  //     sdate: DateFormat("yyyy-MM-dd").format(DateTime.now()),
  //     stime: DateFormat("HH:ss:mm").format(DateTime.now()),
  //     content: "Flutter 프로젝트",
  //     complete: false,
  //   ),
  // ];

  Todo getTodo(String content) => Todo(
        sdate: DateFormat("yyyy-MM-dd").format(DateTime.now()),
        stime: DateFormat("HH:ss:mm").format(DateTime.now()),
        content: content,
        complete: false,
      );

  Widget alertDialog(BuildContext context) => AlertDialog(
        actions: [
          TextField(
            // keyboardType: TextInputType.go, // 키보드 종류 설정.
            textInputAction: TextInputAction.go,
            onSubmitted: (value) {
              var snackBar = SnackBar(
                content: Text("$value 가 추가되었음"),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);

              var todo = getTodo(value);
              Navigator.of(context).pop();
              setState(() {
                todoList.add(todo);
              });
            },
            decoration: const InputDecoration(
              hintText: "할일을 입력해 주세요",
            ),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    /// State 클래스 내의 함수를 실행하여 결과를 가져온후 todoList 를 만든다
    /// 이때 클래스 내의 함수를 호출하여 다른 변수를 만드는 경우
    /// 이 코드는 Build 함수 내부에서 실행해야 한다
    // List<Todo> todoList = [
    //   getTodo("플러터 프로젝트"),
    //   getTodo("오늘은 금요일"),
    //   getTodo("내일은 토요일 뭐할까"),
    // ];
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          "images/profile.png",
          fit: BoxFit.fill,
        ),
        title: const Text("나의 TodoList"),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => alertDialog(context),
              );
            },
            icon: const Icon(
              Icons.add_alarm,
            ),
          )
        ],
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: todoList.length, // 리스트 길이 꼭 입력해야됨.
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {},
            splashColor:
                const Color.fromARGB(255, 180, 20, 30).withOpacity(0.5),
            title: Dismissible(
              key: Key(todoList[index].content),
              background: Container(
                color: Colors.green,
                child: const Text("삭제"),
              ),
              onDismissed: (direction) {
                setState(() {
                  todoList.removeAt(index);
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(todoList[index].sdate),
                        Text(todoList[index].stime),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          todoList[index].content,
                          style:
                              const TextStyle(fontSize: 20, color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
