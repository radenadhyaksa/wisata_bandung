import 'package:flutter/material.dart';
import 'presensi/presensi_check_in.dart';
import 'home/home_page.dart';
import 'profile_page.dart';

class AppPage extends StatelessWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _MyApp();
  }
}

class _MyApp extends StatefulWidget {
  const _MyApp({Key? key}) : super(key: key);

  @override
  __MyAppState createState() => __MyAppState();
}

class __MyAppState extends State<_MyApp> {
  var currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const PresensiCheckIn(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Presensi',
            icon: Icon(Icons.fingerprint),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person_rounded),
          ),
        ],
        onTap: (index) => setState(() => currentIndex = index),
      ),
    );
  }
}
