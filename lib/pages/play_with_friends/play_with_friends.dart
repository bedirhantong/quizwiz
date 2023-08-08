import 'package:flutter/material.dart';

import '../choose_category/choose_category.dart';

class PlayWithFriends extends StatelessWidget {
  const PlayWithFriends({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ChooseCategory(),
    );
  }
}
