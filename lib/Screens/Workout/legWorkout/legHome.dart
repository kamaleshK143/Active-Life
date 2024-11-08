import 'package:activelife/Screens/Workout/legWorkout/dumbell%20lunge.dart';
import 'package:activelife/Screens/Workout/legWorkout/goodmornings.dart';
import 'package:activelife/Screens/Workout/legWorkout/legextension.dart';
import 'package:activelife/Screens/Workout/legWorkout/legpress.dart';
import 'package:activelife/Screens/Workout/legWorkout/lyinglegcurls.dart';
import 'package:activelife/Screens/Workout/legWorkout/machineabductions.dart';
import 'package:activelife/Screens/Workout/legWorkout/seatedlegcurls.dart';
import 'package:activelife/Screens/Workout/legWorkout/standinglegcurls.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LegHome extends StatefulWidget {
  const LegHome({super.key});

  @override
  State<LegHome> createState() => _LegHomeState();
}

class _LegHomeState extends State<LegHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              title: Text("Leg",style: GoogleFonts.poppins(),),
            ),
            InkWell(
              onTap: () {
                Get.to(legextensions());
              },
              child: Card(
                child: Image.asset("assets/Leg/leg extensions.jpg"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(dumbelllunge());
              },
              child: Card(
                child: Image.asset("assets/Leg/dumbell lunge.jpg"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(goodmornings());
              },
              child: Card(
                child: Image.asset("assets/Leg/good mornings.jpg")
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(legpress());
              },
              child: Card(
                child: Image.asset("assets/Leg/leg press.jpg"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(lyinglegcurls());
              },
              child: Card(
                child: Image.asset("assets/Leg/lying leg curls.jpg"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(machineabductions());
              },
              child: Card(
                child: Image.asset("assets/Leg/machine abductions.jpg"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(seatedlegcurls());
              },
              child: Card(
                child: Image.asset("assets/Leg/seated leg curls.jpg"),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(standinglegcurls());
              },
              child: Card(
                child: Image.asset("assets/Leg/standing leg curls.jpg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
