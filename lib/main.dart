import 'package:flutter/material.dart';
import 'package:tugaspraktikum6/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Future<SharedPreferences> _preference = SharedPreferences.getInstance();
  bool _bool = false;

  void _Boolean() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _bool = !_bool;
      if (_bool == true) {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Profile(),
        ));
        print("Menuju ke Profile");
      } else {
        print("Coba Lagi");
      }
    });
    prefs.setBool('bool', _bool);
  }

  _getBoolean() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _bool = prefs.getBool('bool') ?? _bool;
      if (_bool == true) {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Profile(),
        ));
        print("Menuju ke Profile");
      } else {
        print("Coba Lagi");
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _getBoolean();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: GestureDetector(
            onTap: () {
              _Boolean;
            },
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 112, 91, 222),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Center(
                child: Text(
                  "Masuk",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
