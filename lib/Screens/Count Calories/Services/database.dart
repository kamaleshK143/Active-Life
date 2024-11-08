import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class DatabaseMethods {
  Future addUserDetails(Map<String, dynamic> userInfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection("users")
        .doc(id)
        .set(userInfoMap);
  }

  Future addCalorieDetails(
      Map<String, dynamic> calorieInfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection("Calories")
        .doc(id)
        .set(calorieInfoMap);
  }

  Future<Stream<QuerySnapshot>> getCalorieDetails() async {
    return await FirebaseFirestore.instance.collection("Calories").snapshots();
  }

  Future updateCalorieDetails(
      String id, Map<String, dynamic> updateInfo) async {
    return await FirebaseFirestore.instance
        .collection("Calories")
        .doc(id)
        .update(updateInfo);
  }

  Future deleteCalorieDetails(String id) async {
    return await FirebaseFirestore.instance
        .collection("Calories")
        .doc(id)
        .delete();
  }
}
