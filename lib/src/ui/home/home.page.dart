import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helpy/src/ui/chat/screens/HomeScreen.dart';
import 'package:helpy/src/ui/common/app_colors.dart';
import 'package:helpy/src/ui/home/forum.page.dart';
import 'package:helpy/src/ui/home/main.page.dart';
import 'package:helpy/src/ui/home/map.page.dart';
import 'package:helpy/src/ui/home/profile.page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static List<Widget> _pages = <Widget>[
    MainPage(),
    ForumPage(),
    ChatPage(),
    MapPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.pink,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/Home.png',
              color: _selectedIndex == 0 ? AppColors.pink : null,
            ),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/message-circle.svg',
              color: _selectedIndex == 1 ? AppColors.pink : null,
            ),
            label: 'Форум',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/mail.svg',
              color: _selectedIndex == 2 ? AppColors.pink : null,
            ),
            label: 'Чаты',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/map-pin.svg',
              color: _selectedIndex == 3 ? AppColors.pink : null,
            ),
            label: 'Карта',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/user.svg',
              color: _selectedIndex == 4 ? AppColors.pink : null,
            ),
            label: 'Профиль',
          ),
        ],
      ),
      body: SafeArea(
        child: _pages.elementAt(_selectedIndex),
      ),
    );
  }
}
