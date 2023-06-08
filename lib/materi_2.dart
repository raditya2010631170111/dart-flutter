import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ColumnNRow extends StatelessWidget {
  const ColumnNRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // ElevatedButton(
            //   child: const Text("Tombol"),
            //   onPressed: () {},
            // ),
            // SizedBox(
            //   width: double.infinity,
            //   child: ElevatedButton(
            //     child: const Text("Tombol"),
            //     onPressed: () {},
            //   ),
            // ),
            // IconButton(
            //   onPressed: () {},
            //   icon: const Icon(
            //     Icons.access_alarm,
            //   ),
            // ),
            Image.asset("assets/introduction.png")
          ],
        ),
      ),
    );
  }
}