import 'package:activelife/BottomBar/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BMIDetails extends StatefulWidget {
  const BMIDetails({super.key});

  @override
  State<BMIDetails> createState() => _BMIDetailsState();
}

class _BMIDetailsState extends State<BMIDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 50,),
          Container(
            child: Row(
              children: [
                IconButton(
                        onPressed: () {
                          Get.to(BottomNav());
                        },
                        icon: Icon(Icons.arrow_back,color: Colors.white,)),
                        SizedBox(width: 10,),
                        Text("BMI Ranges",style: GoogleFonts.poppins(fontSize: 20
                        ,color: Colors.white,
                      ),
                        )
              ],
              
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  "If your BMI is:",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  " . Below 18.5 – you're in the underweight range",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  " . Between 18.5 and 24.9 – you're in the healthy weight range",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  " . Between 25 and 29.9 – you're in the overweight range",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  " . 30 or over – you're in the obese range",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
