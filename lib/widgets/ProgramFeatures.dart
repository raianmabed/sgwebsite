import 'package:flutter/material.dart';
import 'package:sgwebsite/constants/colors.dart'; 
import 'package:sgwebsite/styles/textStyleRow.dart'; 



class ProgramFeatures extends StatelessWidget {
  const ProgramFeatures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 120),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildFeatureCard(
            title: "شهادة معتمدة",
            description: "جميع برامجنا معتمدة من\n وزارة التعليم الليبية",
          ),
          _buildFeatureCard(
            title: "مرونة في الدراسة",
            description: " نظامان للدراسة\n (النظامي والانتساب)",
          ),
          _buildFeatureCard(
            title: "كادر تدريسي مؤهل",
            description: "نخبة من الأساتذة ذوي\n الخبرة والكفاءة",
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureCard({required String title, required String description}) {
    return SizedBox(
      height: 240,
      width: 310,
      child: Card.filled(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: CustomColor.ColorAmber,
                fontSize: 28,
              ),
            ),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: CustomColor.ColorTextgry,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// MiddleInstitutePrograms.dart



class MiddleInstitutePrograms extends StatelessWidget {
  const MiddleInstitutePrograms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "البــرامج التعليميـة \nللمعهد المتوسط",
              style: TextStyle(
                  fontSize: 64,
                  color: CustomColor.ColorGreen,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              "نقدم مجموعة متنوعة من البرامج التعليمية على \nمستوى المعهد المتوسط، تم تصميمهــا لتزويـد \nالطلاب بالمهارات الأساسيــــة التي يحتاجونهـــــا  \nلمواصلة تعليمهم في مجـــــالات متقدمـــــــة. \nوتشمل هذه البرامج تخصصات:",
              style: TextStyle(fontSize: 24, color: CustomColor.ColorTextgry),
            ),
          ],
        ),
        const SizedBox(width: 200),
        Column(
          children: [
            _buildProgramCard(
              image: "assets/codee.png",
              title: "الحاسب الآلي",
              description: "تطوير مهارات الحوسبة الأساسية \nوالتقنيات الحديثة.",
            ),
            const SizedBox(height: 20),
            _buildProgramCard(
              image: "assets/bussinesss.png",
              title: "إدارة الأعمال",
              description: "تعلم أساسيات الإدارة والتخطيط \nالاستراتيجي.",
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildProgramCard({
    required String image,
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
            Image.asset(image, width: 77, height: 77),
            const SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: CustomColor.ColorGreen,
                    fontSize: 32,
                  ),
                ),
                Text(
                  description,
                  textAlign: TextAlign.start,
                  style: TextStyle(
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
