// import 'package:flutter/material.dart';
// import 'package:sunday_mall/views/onboading/onboading-screen_3.dart';
// import 'package:sunday_mall/views/onboading/onboading_screen_1.dart';
// import 'package:sunday_mall/views/onboading/onboading_screen_2.dart';
//
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Onboarding Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: OnboardingScreen(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
//
// class OnboardingScreen extends StatefulWidget {
//   @override
//   _OnboardingScreenState createState() => _OnboardingScreenState();
// }
//
// class _OnboardingScreenState extends State<OnboardingScreen> {
//   final PageController _pageController = PageController();
//   int _currentPage = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         controller: _pageController,
//         onPageChanged: (int page) {
//           setState(() {
//             _currentPage = page;
//           });
//         },
//         children: [
//           Onboard1(),
//           Onboard2(),
//           Onboard3(),
//         ],
//       ),
//       bottomNavigationBar: Container(
//         padding: EdgeInsets.all(16),
//         color: Colors.transparent,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 _pageController.jumpToPage(2); // Skip to last screen
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.orange,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//               ),
//               child: Text('Skip'),
//             ),
//             Row(
//               children: List.generate(3, (index) => buildDot(index)),
//             ),
//             _currentPage < 2
//                 ? ElevatedButton(
//               onPressed: () {
//                 _pageController.nextPage(
//                   duration: Duration(milliseconds: 300),
//                   curve: Curves.easeIn,
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.orange,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//               ),
//               child: Text('Next'),
//             )
//                 : ElevatedButton(
//               onPressed: () {
//                 // Navigate to home screen
//                 Navigator.pushReplacementNamed(context, '/home');
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.orange,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//               ),
//               child: Text('Get Started'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget buildDot(int index) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 4),
//       height: 8,
//       width: 8,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: _currentPage == index ? Colors.orange : Colors.grey,
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:sunday_mall/views/screens/onboarding/onboading_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}

