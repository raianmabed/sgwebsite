import 'package:flutter/material.dart';
import 'package:sgwebsite/constants/colors.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Main Footer Content
        Container(
          height: 300,
          width: double.maxFinite,
          padding: const EdgeInsets.all(50),
          color: CustomColor.ColorGreen,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Institute Info
                const Row(
                  children: [
                    Image(
                      image: AssetImage("assets/logo.png"),
                      height: 130,
                    ),
                    SizedBox(width: 16),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'بوابة العلوم', // Institute Name
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'وجهتكم المثلى لتعليم عالي الجودة', // Institute Tagline
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                // Contact Info
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "للتواصل",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '+218-915393406', // Phone number
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      '+218-928393406', // Phone number
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),

                // Location Info
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.location_on, color: Colors.white),
                    const SizedBox(width: 8),
                    const Text(
                      'السراج - طرابلس', // Location
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),

                // Social Media Links
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "تابعنا على:",
                      style: TextStyle(color: Colors.white),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.facebook, color: Colors.white),
                          onPressed: () {
                            // Facebook Link
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.access_alarms_outlined,
                              color: Colors.white),
                          onPressed: () {
                            // LinkedIn Link
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        // Footer Bottom Text
        Container(
          width: double.maxFinite,
          color: CustomColor.ColorGreen,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '© 2024 Science Gate. All rights reserved.',
                style: TextStyle(color: Colors.grey[400], fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
