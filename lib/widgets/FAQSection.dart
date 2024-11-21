import 'package:flutter/material.dart';
import 'package:sgwebsite/constants/colors.dart'; 
import 'package:sgwebsite/styles/textStyleRow.dart';

import 'package:flutter/material.dart';
import 'package:sgwebsite/widgets/FAQCard.dart';

class FAQSection extends StatelessWidget {
  const FAQSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      color: CustomColor.ColorBackground,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 300),
        children: const [
          Text(
            "الأسئلة الشائعة",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: CustomColor.ColorGreen,
              fontSize: 46,
            ),
          ),
          SizedBox(height: 30),
          FAQCard(
            question: 'ما هي الوثائق المطلوبة للتسجيل؟',
            answers: [
              "1. 6صور شخصية.",
              "2. المؤهل الأصلي.",
              "3. رقم الهوية الوطنية.",
              "4. نسخة من ورقة رب الأسرة.",
              "5. دفع رسوم الإشتراك.",
            ],
          ),
          FAQCard(
            question: 'ما هي مدة الدراسة في المعهد؟',
            answers: ["مدة الدراسة تختلف حسب التخصص."],
          ),
          FAQCard(
            question: 'هل يمكنني الدراسة بنظام الانتساب؟',
            answers: ["نعم، يمكنك اختيار نظام الانتساب وفق الشروط المتاحة."],
          ),
          SizedBox(height: 100),
          Text(
            "لإستفساراتكم أو التسجيل يسعدنا \nتواصلكم معنا",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 48,
              color: CustomColor.ColorGreen,
            ),
          ),
        ],
      ),
    );
  }
}
