import 'package:flutter/material.dart';
import 'package:tody_app/test/state_scope.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const StateScopeWidget(
      child: Scaffold(
        body: ViewOfMyPage(),
      ),
    );
  }
}

class ViewOfMyPage extends StatelessWidget {
  const ViewOfMyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ListenableNumberView(),
        const SizedBox(height: 10),
        const ListenableColorView(),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: StateScopeWidget.of(context)!.changeColor,
              child: const Text('Change Color'),
            ),
            ElevatedButton(
              onPressed: StateScopeWidget.of(context)!.increaseNumber,
              child: const Text('Increase Number'),
            )
          ],
        )
      ],
    );
  }
}

class ListenableNumberView extends StatelessWidget {
  const ListenableNumberView({super.key});

  @override
  Widget build(BuildContext context) {
    final stateScope = StateScope.valueOf(context)!;

    return Text(stateScope.value.toString(),
        style: Theme.of(context).textTheme.displayLarge);
  }
}

class ListenableColorView extends StatelessWidget {
  const ListenableColorView({super.key});

  @override
  Widget build(BuildContext context) {
    final stateScope = StateScope.colorOf(context)!;

    return Container(
      width: 100,
      height: 100,
      color: stateScope.color,
    );
  }
}
