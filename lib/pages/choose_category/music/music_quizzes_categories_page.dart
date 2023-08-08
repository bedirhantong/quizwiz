import 'package:flutter/material.dart';

class MusicCategoriesPage extends StatefulWidget {
  const MusicCategoriesPage({super.key});

  @override
  State<MusicCategoriesPage> createState() => _MusicCategoriesPageState();
}

class _MusicCategoriesPageState extends State<MusicCategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
        title: const Text('Music'),
      ),
    );
  }
}
