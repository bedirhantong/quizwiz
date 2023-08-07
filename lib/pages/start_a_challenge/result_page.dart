import 'package:flutter/material.dart';
import '../main_screen_with_bottom_nav/bottom_navigation.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const BottomNav()),
              (route) =>
                  false, // Tüm diğer sayfaları stackten kaldırmak için "false" döndürüyoruz.
            );
          },
          child: const Text('Check is done'),
        ),
      ),
    );
  }
}
