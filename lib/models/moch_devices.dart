import 'package:healthapp/models/device.dart';

final List<Device> mockDevices = [
  Device(
    id: '1',
    battery: 90,
    name: 'Device One',
    isBonded: true,
    isBonding: false,
    isConnecting: false,
    isConnected: false,
    connectionError: 0,
    error: 0,
    cassetteIn: false,
  ),
  Device(
    id: '2',
    battery: 80,
    name: 'Device Two',
    isBonded: false,
    isBonding: false,
    isConnecting: false,
    isConnected: true,
    connectionError: 1,
    error: 0,
    cassetteIn: false,
  ),
  // Add more mock devices as needed
];
