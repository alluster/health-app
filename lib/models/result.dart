// models/result.dart
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Result {
  final String id;
  final String subjectProfileNickName;
  final String subjectProfileId;
  final String deviceId;
  final String concentration;
  final String measurementDate;
  final String measurementTime;
  final String weightUnit;
  final int weight;
  final int age;
  final int cassetteProfile;
  final int sleepQuality;
  final int stressLevel;

  Result({
    required this.id,
    required this.subjectProfileNickName,
    required this.subjectProfileId,
    required this.deviceId,
    required this.concentration,
    required this.measurementDate,
    required this.measurementTime,
    required this.weightUnit,
    required this.weight,
    required this.age,
    required this.cassetteProfile,
    required this.sleepQuality,
    required this.stressLevel,
  });

  Map<String, dynamic> toMap() {
    return {
      'subjectProfileNickName': subjectProfileNickName,
      'subjectProfileId': subjectProfileId,
      'deviceId': deviceId,
      'concentration': concentration,
      'measurementDate': measurementDate,
      'measurementTime': measurementTime,
      'weightUnit': weightUnit,
      'weight': weight,
      'age': age,
      'cassetteProfile': cassetteProfile,
      'sleepQuality': sleepQuality,
      'stressLevel': stressLevel,
    };
  }
}

class ResultNotifier extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<bool> addResult(Result result) async {
    try {
      await _firestore.collection('results').add({
        'subjectProfileNickName': result.subjectProfileNickName,
        'subjectProfileId': result.subjectProfileId,
        'deviceId': result.deviceId,
        'concentration': result.concentration,
        'measurementDate': result.measurementDate,
        'measurementTime': result.measurementTime,
        'weightUnit': result.weightUnit,
        'weight': result.weight,
        'age': result.age,
        'cassetteProfile': result.cassetteProfile,
        'sleepQuality': result.sleepQuality,
        'stressLevel': result.stressLevel,
      });
      notifyListeners();
      return true; // Return true if the operation was successful
    } catch (e) {
      print('Error adding result: $e');
      return false; // Return false if there was an error
    }
  }
}
