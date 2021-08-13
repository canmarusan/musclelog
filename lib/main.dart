import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:musclelog/widgets/screen/main_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
      MaterialApp(
        home: MainScreen(),
      )













  );
}
