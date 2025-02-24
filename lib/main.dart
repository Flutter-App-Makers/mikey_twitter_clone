import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mikey_twitter_clone/firebase_options.dart';
import 'package:mikey_twitter_clone/pages/signin.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignIn(),
      debugShowCheckedModeBanner: false,
    );
  }
}
