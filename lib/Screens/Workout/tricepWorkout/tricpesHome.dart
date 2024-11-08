import 'package:activelife/Screens/Workout/bicepsWorkout/onearm.dart';
import 'package:activelife/Screens/Workout/tricepWorkout/benchdips.dart';
import 'package:activelife/Screens/Workout/tricepWorkout/closegripspushups.dart';
import 'package:activelife/Screens/Workout/tricepWorkout/dumbelltricepsextensions.dart';
import 'package:activelife/Screens/Workout/tricepWorkout/pushdowns.dart';
import 'package:activelife/Screens/Workout/tricepWorkout/seated.dart';
import 'package:activelife/Screens/Workout/tricepWorkout/skullcrusher.dart';
import 'package:activelife/Screens/Workout/tricepWorkout/widegrip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TricepsHome extends StatefulWidget {
  const TricepsHome({super.key});

  @override
  State<TricepsHome> createState() => _TricepsHomeState();
}

class _TricepsHomeState extends State<TricepsHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              title: Text("Triceps",style:GoogleFonts.poppins(),),
            ),
            InkWell(
              onTap: () {
                Get.to(benchdips());
              },
              child: Card(
                child: Image.asset("assets/triceps/bench dips.jpg"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(closegrip());
              },
              child: Card(
                child: Image.asset("assets/triceps/close grip pushup.jpg"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(dumbelltriceps());
              },
              child: Card(
                child: Image.asset("assets/triceps/dumbell triceps extensions.jpg"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(onearm());
              },
              child: Card(
                child: Image.asset("assets/triceps/one arm.jpg"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(pushdowns());
              },
              child: Card(
                child: Image.asset("assets/triceps/pushdowns.jpg"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(seated());
              },
              child: Card(
                child: Image.asset("assets/triceps/seated dumbell.jpg"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(skullcrusher());
              },
              child: Card(
                child: Image.asset("assets/triceps/skull crusher.jpg"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(widegrip());
              },
              child: Card(
                child: Image.asset("assets/triceps/wide grip.jpg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
