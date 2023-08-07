import 'package:flutter/material.dart';

import '../main_screen_with_bottom_nav/bottom_navigation.dart';

class OfficialLoginPage extends StatefulWidget {
  const OfficialLoginPage({super.key});

  @override
  State<OfficialLoginPage> createState() => _OfficialLoginPageState();
}

class _OfficialLoginPageState extends State<OfficialLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            const Expanded(
              child: Image(
                image: AssetImage('assets/images/login/auth.gif'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: Expanded(
                child: OutlinedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xAB393939),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 41,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  onPressed: () {
                    // Navigator.popUntil(context, (route) => ); Main screen e kadar
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BottomNav(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: ListTile(
                      title: const Text(
                        'Log in with Google',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.normal),
                      ),
                      trailing: Image.asset('assets/images/logo/google.png'),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Switch Accounts',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
