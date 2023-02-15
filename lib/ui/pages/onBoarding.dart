import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbecek/ui/pages/webViewHome.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  late PageController _pageController;
  int currentIndex = 0;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/1.png'),
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 100),

            Container(
              height: 50,
              width: MediaQuery.of(context).size.width - 30,
              color: Colors.blue,
              child: InkWell(
                onTap: () {
                  Get.off(() => WebViewHome());
                },
                child: const Center(
                  child: Text(
                    'Buat Undangan',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            // Positioned(
            //   top: 540,
            //   child: Container(
            //     height: 50,
            //     width: MediaQuery.of(context).size.width - 30,
            //     color: Colors.blue,
            //     child: InkWell(
            //       onTap: () {
            //         Get.off(() => VerifyJoinEvent());
            //       },
            //       child: const Center(
            //         child: Text(
            //           'Login',
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // Positioned(
            //   top: 610,
            //   child: Row(
            //     children: [
            //       const Text("Don't have account?"),
            //       InkWell(
            //         onTap: () => Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => const Sign(),
            //           ),
            //         ),
            //         child: const Text(
            //           " Sign Up",
            //           style: TextStyle(
            //             fontWeight: FontWeight.w700,
            //             decoration: TextDecoration.underline,
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
