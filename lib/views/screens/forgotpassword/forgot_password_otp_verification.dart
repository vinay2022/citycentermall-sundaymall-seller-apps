import 'package:flutter/material.dart';
import 'package:sunday_mall/views/screens/forgotpassword/set_new_password.dart';

class OtpVerificationScreens extends StatelessWidget {
  final String phoneNumber;

  const OtpVerificationScreens({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final iconHeight = 64.0;
    final halfIconHeight = iconHeight / 2;

    return Scaffold(
      backgroundColor: const Color(0xFF0B0F4E),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.45),
            Container(
              width: double.infinity,
              constraints: BoxConstraints(minHeight: size.height * 0.55),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 90, 24, 24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "Sign In Phone Number",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Sign in code has been sent to $phoneNumber, check your inbox to continue the sign in process.",
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(6, (_) {
                            return const SizedBox(
                              width: 48,
                              child: TextField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                  counterText: '',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(12)),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Haven’t received the sign in code? "),
                            TextButton(
                              onPressed: () {},
                              child: const Text("Resend it."),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Container(
                          width: double.infinity,
                          height: 48,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xFF7D5DF6), Color(0xFF5A46F2)],
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SetNewPasswordScreen(),));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Text("Submit", style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        const SizedBox(height: 40),
                        TextButton(
                          onPressed: () {},
                          child: const Text.rich(
                            TextSpan(
                              text: "Sign in with different method ",
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                  text: "Here.",
                                  style: TextStyle(color: Colors.deepPurple),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -halfIconHeight,
                    left: size.width / 2 - 32,
                    child: Container(
                      width: iconHeight,
                      height: iconHeight,
                      decoration: BoxDecoration(
                        color: const Color(0xFF7D5DF6),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.deepPurple.withOpacity(0.4),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: const Icon(Icons.call, color: Colors.white, size: 32),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
