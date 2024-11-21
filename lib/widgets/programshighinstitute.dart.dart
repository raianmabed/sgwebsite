import 'package:flutter/material.dart';
import 'package:sgwebsite/constants/colors.dart'; 
import 'package:sgwebsite/styles/textStyleRow.dart';

class HighInstituteLeftCards extends StatelessWidget {
  const HighInstituteLeftCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 105.0),
      child: Column(
        children: [
          _buildCard(
            imagePath: "assets/codee.png",
            title: "الحاسب الآلي",
            description: "دراسة متعمقة لتقنيات المعلومات \nوإدارتها.",
          ),
          const SizedBox(height: 20),
          _buildCard(
            imagePath: "assets/bussinesss.png",
            title: "إدارة الأعمال",
            description: "برنامج متقدم لتطوير المهارات \nالإدارية والتجارية.",
          ),
        ],
      ),
    );
  }

  Widget _buildCard({
    required String imagePath,
    required String title,
    required String description,
  }) {
    return SizedBox(
      height: 200,
      width: 397,
      child: Card.filled(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imagePath, width: 77, height: 77),
            const SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: CustomColor.ColorGreen,
                    fontSize: 32,
                  ),
                ),
                Text(
                  description,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    color: CustomColor.ColorTextgry,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//HighInstituteDetails 
class HighInstituteDetails extends StatelessWidget {
  const HighInstituteDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "البــرامج التعليميـة \nللمعهد العــــالي",
          style: TextStyle(
              fontSize: 64,
              color: CustomColor.ColorGreen,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        const Text(
          "نقدم برامج المعهد العالي تعليمًا متقدمًا يهدف \nإلى تزويد الطلاب بالمهارات والمعرفة المتخصصة \nالتي يحتاجونها للتميز في مجالاتهم المهنية.",
          style: TextStyle(fontSize: 24, color: CustomColor.ColorTextgry),
        ),
        const SizedBox(height: 20),
        _buildCard(
          imagePath: "assets/map_accounting.png",
          title: "محاسبة",
          description: "تطوير مهارات الحوسبة الأساسية \nوالتقنيات الحديثة.",
        ),
      ],
    );
  }

  Widget _buildCard({
    required String imagePath,
    required String title,
    required String description,
  }) {
    return SizedBox(
      height: 200,
      width: 397,
      child: Card.filled(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imagePath, width: 77, height: 77),
            const SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: CustomColor.ColorGreen,
                    fontSize: 32,
                  ),
                ),
                Text(
                  description,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    color: CustomColor.ColorTextgry,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
