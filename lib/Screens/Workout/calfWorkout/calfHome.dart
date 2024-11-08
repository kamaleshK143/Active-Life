import 'package:activelife/Screens/Workout/bicepsWorkout/standingbarbell.dart';
import 'package:activelife/Screens/Workout/calfWorkout/one%20leg.dart';
import 'package:activelife/Screens/Workout/calfWorkout/seated%20barbell.dart';
import 'package:activelife/Screens/Workout/calfWorkout/seated%20calf%20raise.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CalfHome extends StatefulWidget {
  const CalfHome({super.key});

  @override
  State<CalfHome> createState() => _CalfHomeState();
}

class _CalfHomeState extends State<CalfHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              title: Text("Calf",style: GoogleFonts.poppins(),),
            ),
            InkWell(
              onTap: () {
                Get.to(seatedcalfraise());
              },
              child: Card(
                child: Image.asset("assets/calf/seated calf raise.jpg"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(standingbarbell());
              },
              child: Card(
                child: Image.asset("assets/calf/standing barbell.jpg"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(seatedbarbell());
              },
              child: Card(
                child: Image.asset("assets/calf/seated barbell.jpg"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(oneleg());
              },
              child: Card(
                child: Image.asset("assets/calf/one leg.jpg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
