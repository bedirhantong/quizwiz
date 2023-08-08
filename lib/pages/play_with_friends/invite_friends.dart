import 'package:flutter/material.dart';

import '../choose_category/choose_category.dart';
import 'friends_data.dart';

class InviteFriends extends StatefulWidget {
  const InviteFriends({super.key});

  @override
  State<InviteFriends> createState() => _InviteFriendsState();
}

class _InviteFriendsState extends State<InviteFriends> {
  List<Map> myData = CustomFriendsData.mydata;

  bool isSelectItem = false;

  Map<int, bool> selectedItem = {};

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
          bottom: PreferredSize(
            preferredSize: Size(screenSize.width - 50, 60),
            child: SearchBar(
              backgroundColor: MaterialStatePropertyAll<Color>(
                Colors.white.withOpacity(0.9),
              ),
              hintText: 'Search for friends',
              leading: const Icon(Icons.search),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemBuilder: (builder, index) {
              Map data = myData[index];
              selectedItem[index] = selectedItem[index] ?? false;
              bool? isSelectedData = selectedItem[index];

              return ListTile(
                onLongPress: () {
                  setState(() {
                    selectedItem[index] = !isSelectedData;
                    isSelectItem = selectedItem.containsValue(true);
                  });
                },
                onTap: () {
                  if (isSelectItem) {
                    setState(() {
                      selectedItem[index] = !isSelectedData;
                      isSelectItem = selectedItem.containsValue(true);
                    });
                  } else {
                    // Open Detail Page
                  }
                },
                title: Text(
                  "${data['name']}",
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                leading: _mainUI(isSelectedData!, data),
              );
            },
            itemCount: myData.length,
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              mini: true,
              onPressed: () {
                selectAllAtOnceGo();
              },
              tooltip: 'Increment',
              child: const Icon(Icons.check),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChooseCategory(),
                  ),
                );
              },
              tooltip: 'Increment',
              child: const Icon(Icons.arrow_forward),
            ),
          ],
        ));
  }

  selectAllAtOnceGo() {
    bool isFalseAvailable = selectedItem.containsValue(false);
    selectedItem.updateAll((key, value) => isFalseAvailable);
    setState(() {
      isSelectItem = selectedItem.containsValue(true);
    });
  }

  Widget _mainUI(bool isSelected, Map ourData) {
    if (isSelectItem) {
      return Icon(
        isSelected ? Icons.check_box : Icons.check_box_outline_blank,
        color: Theme.of(context).primaryColor,
      );
    } else {
      return CircleAvatar(
        child: IconButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Buradan profile gönder'),
              ),
            );
          },
          icon: Expanded(
            child: CircleAvatar(
              backgroundImage: NetworkImage(ourData["imageUrl"]),
            ),
          ),
        ),
      );
    }
  }
}
