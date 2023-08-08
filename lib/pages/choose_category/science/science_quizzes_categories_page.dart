import 'package:flutter/material.dart';

class ScienceCategoriesPage extends StatefulWidget {
  const ScienceCategoriesPage({super.key});

  @override
  State<ScienceCategoriesPage> createState() => _ScienceCategoriesPageState();
}

class _ScienceCategoriesPageState extends State<ScienceCategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
        title: const Text('Science'),
      ),
    );
  }
}
