import 'package:flutter/material.dart';
import 'package:mview/ui_models/page_view_model.dart';
import 'package:mview/ui_models/timer_view_model.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var textController = TextEditingController();
    var setTimer = context
        .select<TimerViewModel, Function(int)>((value) => value.setTimer);
    var pageViewModel = context.watch<PageViewModel>();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: textController,
              decoration: const InputDecoration(
                hintText: "타이머 입력",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setTimer(int.parse(textController.text));
                pageViewModel.bottomNavTap(0);
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: const Text("저장"),
            ),
          ],
        ),
      ),
    );
  }
}
