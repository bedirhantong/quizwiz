import 'package:flutter/material.dart';

class ArtCategoriesPage extends StatefulWidget {
  const ArtCategoriesPage({super.key});

  @override
  State<ArtCategoriesPage> createState() => _ArtCategoriesPageState();
}

class _ArtCategoriesPageState extends State<ArtCategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
        title: const Text('Art'),
      ),
    );
  }
}
