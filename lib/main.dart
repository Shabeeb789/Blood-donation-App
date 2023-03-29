import 'package:blood_donation/firebase_options.dart';
import 'package:blood_donation/onboarding/onboarding_screen.dart';
import 'package:blood_donation/project1/add.dart';
import 'package:blood_donation/project1/home.dart';
import 'package:blood_donation/project1/update.dart';
import 'package:blood_donation/splash/splash_screen.dart';
import 'package:blood_donation/splash/splash_screen_1.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.grey,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      routes: {
        '/splash': (context) => const SplashScreen1(),
        '/onboarding': (context) => const OnboardingScreen(),
        '/': (context) => const HomePage(),
        '/add': (context) => const AddUser(),
        '/update': (context) => const updateUser(),
      },
      initialRoute: '/splash',
    );
  }
}
