import 'package:tugas_2_part2/materi_2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: "test"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var textSize = 12.0;
  double _counter = 12.0;
  bool isVisible = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(""),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
			  child: Text('enlarge text'),
				onPressed: () {
					textSize = textSize + 1.0;
					print(textSize);
					setState(() {});
				  },
			),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   final String title;
//   const MyHomePage({super.key, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: const [
//             Center(
//               child: Text(
//                 "test",
//                 style: TextStyle(
//                   fontSize: 34,
//                   fontWeight: FontWeight.w700,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }