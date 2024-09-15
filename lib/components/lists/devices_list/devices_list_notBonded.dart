// lib/screens/results_list.dart

import 'package:flutter/material.dart';
import 'package:healthapp/components/cards/card_device/card_device_isBonded.dart';
import 'package:healthapp/components/cards/card_device/card_device_notBonded.dart';
import 'package:healthapp/components/cards/card_result.dart';
import 'package:healthapp/models/device.dart';
import 'package:healthapp/models/moch_devices.dart';
import 'package:healthapp/screens/home_screen.dart';

class DevicesListNotBonded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Device> notBondedDevices = mockDevices
        .where((device) => device.isConnected && !device.isBonded)
        .toList();

    return notBondedDevices.isEmpty
        ? Text('No devices')
        : ListView.builder(
            itemCount: notBondedDevices.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                  child: CardDeviceNotBonded(device: notBondedDevices[index]),
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
