import 'package:flutter/material.dart';

class MathCategoriesPage extends StatefulWidget {
  const MathCategoriesPage({super.key});

  @override
  State<MathCategoriesPage> createState() => _MathCategoriesPageState();
}

class _MathCategoriesPageState extends State<MathCategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
        title: const Text('Math'),
      ),
    );
  }
}
