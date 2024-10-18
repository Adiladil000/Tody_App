import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ViewOfMyPage(),
    );
  }
}

class ViewOfMyPage extends StatefulWidget {
  const ViewOfMyPage({
    super.key,
  });

  @override
  State<ViewOfMyPage> createState() => _ViewOfMyPageState();
}

class _ViewOfMyPageState extends State<ViewOfMyPage> {
  int a = 5;

  final colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.teal,
    Colors.cyan,
    Colors.brown,
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$a', style: Theme.of(context).textTheme.displayLarge),
        Container(
          width: 100,
          height: 100,
          color: colors[_currentIndex],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Change Color'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Increase Number'),
            )
          ],
        )
      ],
    );
  }
}
