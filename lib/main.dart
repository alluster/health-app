import 'package:flutter/material.dart';
import 'package:healthapp/models/device.dart';
import 'package:healthapp/models/result.dart';
import 'package:healthapp/screens/bluetooth_pair_flow.dart/bluetooth_pair_flow_1.dart';
import '../firebase/firebase_options.dart';
import 'package:healthapp/models/subject_profile.dart';
import 'package:healthapp/screens/welcome_screen.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => SubjectProfileNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => ResultNotifier(),
          ),
          ChangeNotifierProvider(
            create: (context) => DeviceNotifier(),
          )
        ],
        child: MaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.black,
          ),
          home: BluetoothPairFlow1(),
        ));
  }
}
