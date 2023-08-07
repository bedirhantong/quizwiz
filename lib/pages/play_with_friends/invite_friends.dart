import 'package:flutter/material.dart';

class InviteFriends extends StatelessWidget {
  const InviteFriends({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
        title: const Text('Invite friends'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.qr_code),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: SearchBar(
                backgroundColor: MaterialStatePropertyAll<Color>(
                  Colors.white.withOpacity(0.9),
                ),
                hintText: 'Search for friends',
                leading: const Icon(Icons.search),
              ),
            ),
            Container(
              width: screenSize.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Card(
                shadowColor: Colors.black,
                color: Colors.transparent,
                child: ListTile(
                  title: const Text(
                    'Bedirhan Tonğ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Buradan profile gönder'),
                        ),
                      );
                    },
                    iconSize: 50,
                    icon: const CircleAvatar(
                      backgroundImage: AssetImage(
                          'assets/images/user_image_dummy_data/me.jpg'),
                    ),
                  ),
                ),
              ),
            ),
            // const SelectableListScreen(),
          ],
        ),
      ),
    );
  }
}
