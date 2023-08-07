import 'package:flutter/material.dart';

class BuildFriendsAvatar extends StatelessWidget {
  const BuildFriendsAvatar({
    super.key,
    required this.image,
    required this.username,
  });

  final String image;
  final String username;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.width * 0.15 + 40, // Adjust this value as needed

      child: IconButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Buradan profile gönder'),
              ),
            );
          },
          iconSize: screenSize.width * 0.15,
          icon: Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(image),
                radius: 30,
              ),
              Text(
                username,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 14),
              ),
            ],
          )),
    );
  }
}
