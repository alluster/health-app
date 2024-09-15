// lib/screens/results_list.dart

import 'package:flutter/material.dart';
import 'package:healthapp/components/cards/card_device/card_device_isBonded.dart';
import 'package:healthapp/components/cards/card_result.dart';
import 'package:healthapp/models/device.dart';
import 'package:healthapp/models/moch_devices.dart';
import 'package:healthapp/screens/home_screen.dart';

class DevicesListIsBonded extends StatefulWidget {
  @override
  _DevicesListIsBondedState createState() => _DevicesListIsBondedState();
}

class _DevicesListIsBondedState extends State<DevicesListIsBonded> {
  @override
  final List<Device> bondedList =
      mockDevices.where((device) => device.isBonded).toList();

  Widget build(BuildContext context) {
    return bondedList.isEmpty
        ? Text('No paired devices')
        : ListView.builder(
            itemCount: bondedList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                  child: CardDeviceIsBonded(device: bondedList[index]),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  });
            },
          );
  }
}
