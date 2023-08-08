import 'package:flutter/material.dart';

class HistoryCategoriesPage extends StatefulWidget {
  const HistoryCategoriesPage({super.key});

  @override
  State<HistoryCategoriesPage> createState() => _HistoryCategoriesPageState();
}

class _HistoryCategoriesPageState extends State<HistoryCategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
        title: const Text('History'),
      ),
    );
  }
}
