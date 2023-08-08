import 'package:flutter/material.dart';

class EngineeringCategoriesPage extends StatefulWidget {
  const EngineeringCategoriesPage({super.key});

  @override
  State<EngineeringCategoriesPage> createState() =>
      _EngineeringCategoriesPageState();
}

class _EngineeringCategoriesPageState extends State<EngineeringCategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
        title: const Text('Engineering'),
      ),
    );
  }
}
