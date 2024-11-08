import 'package:activelife/Screens/Workout/chestWorkout/benchpress.dart';
import 'package:activelife/Screens/Workout/chestWorkout/cable%20crossover.dart';
import 'package:activelife/Screens/Workout/chestWorkout/decline%20dumbell%20press.dart';
import 'package:activelife/Screens/Workout/chestWorkout/decline%20press.dart';
import 'package:activelife/Screens/Workout/chestWorkout/dumbell%20flys.dart';
import 'package:activelife/Screens/Workout/chestWorkout/dumbell%20press.dart';
import 'package:activelife/Screens/Workout/chestWorkout/incline%20dumbell%20flys.dart';
import 'package:activelife/Screens/Workout/chestWorkout/incline%20dumbell%20press.dart';
import 'package:activelife/Screens/Workout/chestWorkout/incline%20press.dart';
import 'package:activelife/Screens/Workout/chestWorkout/parallel%20bar%20dips.dart';
import 'package:activelife/Screens/Workout/chestWorkout/peck%20deck%20.dart';
import 'package:activelife/Screens/Workout/chestWorkout/pushups.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ChestHome extends StatefulWidget {
  const ChestHome({super.key});

  @override
  State<ChestHome> createState() => _ChestHomeState();
}

class _ChestHomeState extends State<ChestHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              title: Text("Chest",style: GoogleFonts.poppins(),),
            ),
            InkWell(
              onTap: () {
                Get.to(BenchPress());
              },
              child: Card(
                child: Image.asset("assets/chest/bench press.png"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(cablecrossover());
              },
              child: Card(
                child: Image.asset("assets/chest/cable crossover flys.png"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(declinedumbell());
              },
              child: Card(
                child:
                    Image.asset("assets/chest/decline dumbell bench press.png"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(declinepress());
              },
              child: Card(
                child: Image.asset("assets/chest/decline press.png"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(dumbellflys());
              },
              child: Card(
                child: Image.asset("assets/chest/dumbell flys.png"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(dumbellpress());
              },
              child: Card(
                child: Image.asset("assets/chest/dumbell press.png"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(inclinedumbellpress());
              },
              child: Card(
                child: Image.asset("assets/chest/incline dumbell press.png"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(inclinedumbellflys());
              },
              child: Card(
                child: Image.asset("assets/chest/incline dumbell flys.png"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(inclinepress());
              },
              child: Card(
                child: Image.asset("assets/chest/incline press.png"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(parallelbardips());
              },
              child: Card(
                child: Image.asset("assets/chest/parllel bar dips.png"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(peckdeck());
              },
              child: Card(
                child: Image.asset("assets/chest/pec deck flys.png"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(pushups());
              },
              child: Card(
                child: Image.asset("assets/chest/push ups.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
