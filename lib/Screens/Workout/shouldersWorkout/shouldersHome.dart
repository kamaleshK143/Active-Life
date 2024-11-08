import 'package:activelife/Screens/Workout/backWorkout/bentover.dart';
import 'package:activelife/Screens/Workout/shouldersWorkout/barbell%20front.dart';
import 'package:activelife/Screens/Workout/shouldersWorkout/front%20raise.dart';
import 'package:activelife/Screens/Workout/shouldersWorkout/lateral%20raise.dart';
import 'package:activelife/Screens/Workout/shouldersWorkout/single%20arm%20cable.dart';
import 'package:activelife/Screens/Workout/shouldersWorkout/single%20one%20arm.dart';
import 'package:activelife/Screens/Workout/shouldersWorkout/upright%20row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoulderHome extends StatefulWidget {
  const ShoulderHome({super.key});

  @override
  State<ShoulderHome> createState() => _ShoulderHomeState();
}

class _ShoulderHomeState extends State<ShoulderHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              title: Text("Shoulder",style: GoogleFonts.poppins(),),
            ),
            InkWell(
              onTap: () {
                Get.to(barbellfront());
              },
              child: Card(
                child: Image.asset("assets/shoulder/barbell front.jpg"),
              ),
            ),
             InkWell(
              onTap: () {
                Get.to(bentover());
              },
              child: Card(
                child: Image.asset("assets/shoulder/bent over.jpg"),
              ),
            ),
             InkWell(
              onTap: () {
                Get.to(frontraise());
              },
              child: Card(
                child: Image.asset("assets/shoulder/front raise.jpg"),
              ),
            ),
             InkWell(
              onTap: () {
                Get.to(lateralraise());
              },
              child: Card(
                child: Image.asset("assets/shoulder/lateralraise.jpg"),
              ),
            ),
             InkWell(
              onTap: () {
                Get.to(singlearmcable());
              },
              child: Card(
                child: Image.asset("assets/shoulder/singel arm cable.jpg"),
              ),
            ),
             InkWell(
              onTap: () {
                Get.to(singleonearm());
              },
              child: Card(
                child: Image.asset("assets/shoulder/single one arm.jpg"),
              ),
            ),
             InkWell(
              onTap: () {
                Get.to(uprightrow());
              },
              child: Card(
                child: Image.asset("assets/shoulder/upright row.jpg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
