import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxi_app/screens/available_cabs_list_screen.dart';
import 'package:taxi_app/screens/available_cabs_screen.dart';
import 'package:taxi_app/screens/login.dart';
import 'package:taxi_app/screens/maps_screen_1.dart';
import 'package:taxi_app/screens/profile_registration_screen.dart';
import 'package:taxi_app/widgets/google%20maps/maps_sample.dart';
import 'package:taxi_app/widgets/login_intro_widget.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GetMaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(textTheme),
      ),
      home: AnimatedSplashScreen(
          duration: 2500,
          // splashIconSize: Asset,
          backgroundColor: Color.fromARGB(255, 18, 203, 157),
          // pageTransitionType: PageTransitions,
          splashIconSize: double.infinity,
          splashTransition: SplashTransition.fadeTransition,
          // pageTransitionType: PageTransitionType.bottomToTop,
          splash: 'assets/images/1.png',
          // splash:  Icons.car,
          nextScreen: MapScreen1()),
    );
  }
}
