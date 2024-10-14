import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int counter;
  const HomePage({Key? key, required this.counter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Home Page',
              style: TextStyle(
                color: Color.fromARGB(255, 137, 139, 137),
                fontSize: 45,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text('You have pushed the button this many times:'),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
