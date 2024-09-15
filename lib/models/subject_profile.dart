// models/subject_profile.dart
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SubjectProfile {
  final String id;
  final String subjectProfileNickName;
  final String subjectProfileId;
  final String weightUnit;
  final double weight;
  final int age;

  SubjectProfile({
    required this.id,
    required this.subjectProfileNickName,
    required this.subjectProfileId,
    required this.weightUnit,
    required this.weight,
    required this.age,
  });

  Map<String, dynamic> toMap() {
    return {
      'subjectProfileNickName': subjectProfileNickName,
      'subjectProfileId': subjectProfileId,
      'weightUnit': weightUnit,
      'weight': weight,
      'age': age,
    };
  }
}

class SubjectProfileNotifier extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> addSubjectProfile(SubjectProfile subjectProfile) async {
    try {
      DocumentReference subjectProfileRef = await _firestore
          .collection('subjectProfiles')
          .add(subjectProfile.toMap());
      return subjectProfileRef.id;
    } catch (e) {
      print('Error adding subject profile: $e');
      return '';
    }
  }
}
