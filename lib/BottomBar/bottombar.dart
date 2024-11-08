import 'package:activelife/Screens/BMI/bmi.dart';
import 'package:activelife/Home.dart';
import 'package:activelife/Screens/Profile/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex =0;

  late List<Widget> pages;
  late Widget currentPage;
  late MainHome homepage;
  late Bmi bmi;
  late Profile profile;

  @override
  void initState() {
    homepage = MainHome();
    bmi = Bmi();
    profile = Profile();

    pages = [homepage, bmi, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      bottomNavigationBar: CurvedNavigationBar(height: 65,
          backgroundColor: Colors.white,
          color: Colors.black,
          animationDuration: Duration(milliseconds: 500),onTap: (int index) {
            setState(() {
              currentTabIndex = index;
            });
          },items: [
            Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.speed,
              color: Colors.white,
              semanticLabel: "BMI",
            ),
            Icon(
              Icons.person_outline,
              color: Colors.white,
            )
          ]),
          body: pages[currentTabIndex],
    );
  }
}
