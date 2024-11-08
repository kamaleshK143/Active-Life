import 'package:activelife/Screens/Count%20Calories/calories.dart';
import 'package:activelife/Screens/Count%20Calories/Services/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController caloriecontroller = new TextEditingController();
  TextEditingController carbscontroller = new TextEditingController();
  TextEditingController protiencontroller = new TextEditingController();
  TextEditingController fatcontroller = new TextEditingController();
  Stream? CalorieStream;
  getontheload() async {
    CalorieStream = await DatabaseMethods().getCalorieDetails();
    setState(() {});
  }

  @override
  void initState() {
    getontheload();
    super.initState();
  }

  Widget allCalorieDetails() {
    return StreamBuilder(
        stream: CalorieStream,
        builder: (context, AsyncSnapshot snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot ds = snapshot.data.docs[index];
                    return Container(
                      
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                      Color.fromARGB(172, 102, 206, 238),
                      Color.fromARGB(255, 240, 194, 234),
                    ])
                            ,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text("Name : ",
                                          style: GoogleFonts.poppins(
                                              color: Color.fromARGB(255, 0, 0, 0),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                              Text( ds["Name"],
                                          style: GoogleFonts.poppins(
                                              color: const Color.fromARGB(255, 0, 0, 0),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      namecontroller.text = ds["Name"];
                                      caloriecontroller.text = ds["Calories"];
                                      carbscontroller.text = ds["Carbohydrate"];
                                      protiencontroller.text = ds["Protien"];
                                      fatcontroller.text = ds["Fats"];
                                      EditCalorieDetails(ds["Id"]);
                                    },
                                    child: Icon(
                                      Icons.edit,
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  GestureDetector(
                                      onTap:()async{
                                        await DatabaseMethods()
                                            .deleteCalorieDetails(ds["Id"]);
                                      },
                                      child: Icon(
                                        Icons.delete,
                                        color: const Color.fromARGB(255, 0, 0, 0),
                                      ))
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Calories : ",
                                    style: GoogleFonts.poppins(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(ds["Calories"],style: GoogleFonts.poppins(
                                        color: const Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),)
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Carbs : ",
                                    style: GoogleFonts.poppins(
                                        color: const Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(ds["Carbohydrate"],
                                    style: GoogleFonts.poppins(
                                        color: const Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),)
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Protien : ",
                                    style: GoogleFonts.poppins(
                                        color: const Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(ds["Protien"],
                                    style: GoogleFonts.poppins(
                                        color: const Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),)
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Fat : ",
                                    style: GoogleFonts.poppins(
                                        color: const Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(ds["Fats"],
                                    style: GoogleFonts.poppins(
                                        color: const Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  })
              : Container();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(Caloriesentry());
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Row(
          children: [
            Text("Calorie",style: GoogleFonts.poppins(
              color: Colors.orange,
            ),),
            Text("Tracker",style: GoogleFonts.poppins(
              color: Colors.blue,
            ),)
          ],
        ),
      ),
      body: Container(

        margin: EdgeInsets.only(left: 10.0, right: 20.0, top: 30.0),
        child: Column(
          children: [
            Expanded(child: allCalorieDetails()),
          ],
        ),
      ),
    );
  }

  Future EditCalorieDetails(String id) => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            content: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.cancel)),
                      SizedBox(
                        width: 60.0,
                      ),
                     Row(
          children: [
            Text("Edit",style: GoogleFonts.poppins(
              color: Colors.orange,
              fontSize: 20,
            ),),
            Text("Data",style: GoogleFonts.poppins(
              color: Colors.blue,
              fontSize: 20,
            ),)
          ],
        ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Name",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      controller: namecontroller,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Calories",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      controller: caloriecontroller,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Carbs",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      controller: carbscontroller,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Protien",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      controller: protiencontroller,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Fat",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      controller: fatcontroller,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Center(
                      child: ElevatedButton(
                          onPressed: () async {
                            Map<String, dynamic> upadteInfo = {
                              "Name": namecontroller.text.trim(),
                              "Calories": caloriecontroller.text.trim(),
                              "Carbohydrate": carbscontroller.text.trim(),
                              "Protien": protiencontroller.text.trim(),
                              "Fats": fatcontroller.text.trim(),
                              "Id": id,
                            };
                            await DatabaseMethods()
                                .updateCalorieDetails(id, upadteInfo)
                                .then((value) {
                              Navigator.pop(context);
                            });
                          },
                          child: Text("Upadte")))
                ],
              ),
            ),
          ));
}
