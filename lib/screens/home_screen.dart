import 'package:flutter/material.dart';
import 'package:zoom_clone_tutorial/screens/history_meeting_screen.dart';
import 'package:zoom_clone_tutorial/screens/meeting_screen.dart';
import 'package:zoom_clone_tutorial/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;

  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  List<Widget> pages = [
     MeetingScreen(),
    const HistoryMeetingScreen(),
    const Text('Contacts'),
    const Text('Settings')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Meet & Chat"),
        centerTitle: true,
        backgroundColor: backgroundColor,
      ),
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: footerColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: onPageChanged,
        unselectedFontSize: 11,
        currentIndex: _page,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.comment_bank), label: "Meet & Char"),
          BottomNavigationBarItem(icon: Icon(Icons.lock_clock), label: "Meeting"),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: "Contats"),
          BottomNavigationBarItem(icon: Icon(Icons.system_security_update), label: "Settings"),
        ],
      ),
    );
  }
}
