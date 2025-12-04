import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 15),
          Container(
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0, 1.4),
                end: Alignment.topCenter,
                colors: [Colors.white, Colors.white.withOpacity(0.0)],
                stops: const [0.20, 0.55],
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 80),
                    Image.asset('assets/images/Checkbox.png'),
                    const SizedBox(height: 10),
                    Image.asset('assets/images/Checkbox-1.png'),
                    const SizedBox(height: 10),
                    Image.asset('assets/images/Container.png'),
                    const SizedBox(height: 10),
                    Image.asset('assets/images/Checkbox-2.png'),
                  ],
                ),

                Column(
                  children: [
                    const SizedBox(height: 80),
                    Image.asset('assets/images/Checkbox11.png'),
                    const SizedBox(height: 10),
                    Image.asset('assets/images/Checkbox-12.png'),
                    const SizedBox(height: 10),
                    Image.asset('assets/images/Checkbox-13.png'),
                    const SizedBox(height: 10),
                    Image.asset('assets/images/Checkbox-2.png'),
                  ],
                ),

                Column(
                  children: [
                    const SizedBox(height: 80),
                    Image.asset('assets/images/Checkbox111.png'),
                    const SizedBox(height: 10),
                    Image.asset('assets/images/Tooltip.png'),
                    const SizedBox(height: 10),
                    Image.asset('assets/images/Checkbox333.png'),
                    const SizedBox(height: 10),
                    Image.asset('assets/images/Checkbox-2.png'),
                  ],
                ),
              ],
            ),
          ),

          Transform.translate(
            offset: Offset(0, -40),
            child: Column(
              children: [
                Text(
                  "WELCOME TO REAL SCOUT",
                  style: TextStyle(color: Color(0XFF666876), fontSize: 16),
                ),

                SizedBox(height: 30),

                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF191D31),
                    ),
                    children: [
                      const TextSpan(text: "Let's Get You Closer\nTo "),
                      TextSpan(
                        text: "Your Ideal Home",
                        style: TextStyle(color: Color(0xFF247CFF)),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF247CFF),
                    fixedSize: Size(390, 59),
                  ),

                  onPressed: () {},
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
