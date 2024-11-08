import 'package:activelife/Screens/Workout/absWorkout/barbell%20rollout.dart';
import 'package:activelife/Screens/Workout/absWorkout/crunches.dart';
import 'package:activelife/Screens/Workout/absWorkout/declinesitup.dart';
import 'package:activelife/Screens/Workout/absWorkout/situp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AbsHome extends StatefulWidget {
  const AbsHome({super.key});

  @override
  State<AbsHome> createState() => _AbsHomeState();
}

class _AbsHomeState extends State<AbsHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              title: Text("Abs",style:GoogleFonts.poppins(),),
            ),
            InkWell(
              onTap: () {
                Get.to(crunches());
              },
              child: Card(
                child: Image.asset("assets/abs/crunches.jpg"),
              ),
            ),

            InkWell(
               onTap: () {
                Get.to(barbellrollout());
              },
              child: Card(
                child: Image.asset("assets/abs/barbell rollout.jpg"),
              ),
            ),
            InkWell(
               onTap: () {
                Get.to(declinesitup());
              },
              child: Card(
                child: Image.asset("assets/abs/decline situp.jpg"),
              ),
            ),
            InkWell(
               onTap: () {
                Get.to(situp());
              },
              child: Card(
                child: Image.asset("assets/abs/situp.jpg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
