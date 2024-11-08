import 'package:activelife/Screens/Workout/bicepsWorkout/biceps%20machine%20.dart';
import 'package:activelife/Screens/Workout/bicepsWorkout/cable%20biceps.dart';
import 'package:activelife/Screens/Workout/bicepsWorkout/concentrationcurl.dart';
import 'package:activelife/Screens/Workout/bicepsWorkout/onearm.dart';
import 'package:activelife/Screens/Workout/bicepsWorkout/onearmlow.dart';
import 'package:activelife/Screens/Workout/bicepsWorkout/reversegrip.dart';
import 'package:activelife/Screens/Workout/bicepsWorkout/standingbarbell.dart';
import 'package:activelife/Screens/Workout/bicepsWorkout/standinghammer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BicepsHome extends StatefulWidget {
  const BicepsHome({super.key});

  @override
  State<BicepsHome> createState() => _BicepsHomeState();
}

class _BicepsHomeState extends State<BicepsHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              title: Text("Biceps",style: GoogleFonts.poppins(),),
            ),
            InkWell(
              onTap: () {
                Get.to(cablebiceps());
              },
              child: Card(
                child: Image.asset("assets/biceps/cable biceps curl.jpg"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(bicepsmachine());
              },
              child: Card(
                child: Image.asset("assets/biceps/biceps machine curl.jpg"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(concentrationcurl());
              },
              child: Card(
                child: Image.asset("assets/biceps/concentration curl.jpg"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(onearm());
              },
              child: Card(
                child: Image.asset("assets/biceps/one arm dubmell.jpg"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(onearmlow());
              },
              child: Card(
                child: Image.asset("assets/biceps/one arm low.jpg"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(reversegrip());
              },
              child: Card(
                child: Image.asset("assets/biceps/reverse grip barbell.jpg"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(standingbarbell());
              },
              child: Card(
                child: Image.asset("assets/biceps/standing barbell curl.jpg"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(standinghammer());
              },
              child: Card(
                child: Image.asset("assets/biceps/standing hammer curl.jpg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
