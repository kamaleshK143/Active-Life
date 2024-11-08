import 'package:activelife/Screens/Workout/backWorkout/backlatpuldowns.dart';
import 'package:activelife/Screens/Workout/backWorkout/bentover.dart';
import 'package:activelife/Screens/Workout/backWorkout/chinups.dart';
import 'package:activelife/Screens/Workout/backWorkout/latpulldowns.dart';
import 'package:activelife/Screens/Workout/backWorkout/machinetbar.dart';
import 'package:activelife/Screens/Workout/backWorkout/pullups.dart';
import 'package:activelife/Screens/Workout/backWorkout/vbarlat.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BackHome extends StatefulWidget {
  const BackHome({super.key});

  @override
  State<BackHome> createState() => _BackHomeState();
}

class _BackHomeState extends State<BackHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              title: Text("Back",style: GoogleFonts.poppins(),),
            ),
            InkWell(
              onTap: () {
                Get.to(chinups());
              },
              child: Card(
                child: Image.asset("assets/back/chin ups.png"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(pullups());
              },
              child: Card(
                child: Image.asset("assets/back/pull ups.png"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(latpull());
              },
              child: Card(
                child: Image.asset("assets/back/lat pulldowns.png"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(backlatpull());
              },
              child: Card(
                child: Image.asset("assets/back/back lat pulldowns.png"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(vbarlat());
              },
              child: Card(
                child: Image.asset("assets/back/v bar lat pulldowns.png"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(bentover());
              },
              child: Card(
                child: Image.asset("assets/back/bent over row.png"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(machinetbar());
              },
              child: Card(
                child: Image.asset("assets/back/machine t bar rows.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
