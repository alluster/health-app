import 'package:flutter/material.dart';

class Device {
  final String id;
  final int battery;
  final String name;
  final bool isBonded;
  final bool isBonding;
  final bool isConnecting;
  final bool isConnected;
  final int connectionError;
  final int error;
  final bool cassetteIn;

  Device({
    required this.id,
    required this.battery,
    required this.name,
    required this.isBonded,
    required this.isBonding,
    required this.isConnecting,
    required this.isConnected,
    required this.connectionError,
    required this.error,
    required this.cassetteIn,
  });
}

class DeviceNotifier extends ChangeNotifier {
  List<Device> _devices = [];

  List<Device> get devices => _devices;

  set devices(List<Device> devices) {
    _devices = devices;
    notifyListeners();
  }

  void addDevice(Device device) {
    _devices.add(device);
    notifyListeners();
  }

  void updateDevice(Device device) {
    int index = _devices.indexWhere((d) => d.id == device.id);
    if (index != -1) {
      _devices[index] = device;
      notifyListeners();
    }
  }
}
