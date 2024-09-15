// lib/screens/results_list.dart

import 'package:flutter/material.dart';
import 'package:healthapp/components/cards/card_result.dart';
import 'package:healthapp/models/result.dart';
import 'package:healthapp/screens/result/result_screen.dart';

final List<Result> results = [
  Result(
      id: '0',
      subjectProfileNickName: 'John Doe',
      subjectProfileId: '234erd',
      deviceId: 'Apple Watch',
      concentration: '24:89',
      measurementDate: '2024 05 15',
      measurementTime: '07:34',
      sleepQuality: 1,
      stressLevel: 1,
      weight: 80,
      weightUnit: 'kg',
      age: 36,
      cassetteProfile: 1234321),
  Result(
      id: '1',
      subjectProfileNickName: 'John Doe',
      subjectProfileId: '234erd',
      deviceId: 'Apple Watch',
      concentration: '34:89',
      measurementDate: '2024 05 15',
      measurementTime: '07:34',
      sleepQuality: 1,
      stressLevel: 1,
      weight: 80,
      weightUnit: 'kg',
      age: 36,
      cassetteProfile: 1234321),
  Result(
      id: '2',
      subjectProfileNickName: 'John Doe',
      subjectProfileId: '234erd',
      deviceId: 'Apple Watch',
      concentration: '37:89',
      measurementDate: '2024 05 15',
      measurementTime: '07:34',
      sleepQuality: 1,
      stressLevel: 1,
      weight: 80,
      weightUnit: 'kg',
      age: 36,
      cassetteProfile: 1234321),
];

class resultsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        return GestureDetector(
            child: CardResult(result: results[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      resultScreen(id: results[index].id.toString()),
                ),
              );
            });
      },
    );
  }
}
