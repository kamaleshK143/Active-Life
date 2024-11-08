import 'package:activelife/Screens/Workout/trapsWorkout/barbellshrugs.dart';
import 'package:activelife/Screens/Workout/trapsWorkout/barbellupright.dart';
import 'package:activelife/Screens/Workout/trapsWorkout/dumbellshrugs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TrapsHome extends StatefulWidget {
  const TrapsHome({super.key});

  @override
  State<TrapsHome> createState() => _TrapsHomeState();
}

class _TrapsHomeState extends State<TrapsHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              title: Text("Traps",style: GoogleFonts.poppins(),),
            ),
            InkWell(
              onTap: () {
                Get.to(barbellshrugs());
              },
              child: Card(
                child: Image.asset("assets/traps/barbell shrugs.jpg"),
              ),
            ),
             InkWell(
              onTap: () {
                Get.to(barbellupright());
              },
              child: Card(
                child: Image.asset("assets/traps/barbell upright rows.jpg"),
              ),
            ),
             InkWell(
              onTap: () {
                Get.to(dumbellshruugs());
              },
              child: Card(
                child: Image.asset("assets/traps/dumbell shrugs.jpg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
