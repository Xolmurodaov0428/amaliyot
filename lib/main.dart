import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app/app.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Faqat portret (vertikal) holatga ruxsat berish

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown, // optional
  ]);

  runApp(const MyApp());
}