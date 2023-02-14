import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbecek/ui/pages/onBoarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Mbecek',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splashIconSize: 800,
        duration: 750, //000,
        backgroundColor: Colors.white,
        splashTransition: SplashTransition.fadeTransition,
        animationDuration: const Duration(milliseconds: 1750),
        splash: Container(
          color: Colors.white,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/logo.png",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 5),
              const Text(
                "Mbecek",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              const Text(
                "Undangan Online",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        nextScreen: const OnBoarding(),
      ),
    );
  }
}
