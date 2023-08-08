import 'package:flutter/material.dart';

class BuildHistoryOfCategory extends StatelessWidget {
  const BuildHistoryOfCategory({
    super.key,
    required this.screenSize,
    required this.category,
    required this.image,
    required this.page,
  });

  final Size screenSize;
  final String category;
  final String image;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 7.0),
      child: Stack(
        children: [
          Container(
            height: screenSize.height * 0.17,
            width: screenSize.width * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: screenSize.height * 0.17,
              width: screenSize.width * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(0.4),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    category,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => page,
                        ),
                      );
                    },
                    child: const Text(
                      'See More',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
