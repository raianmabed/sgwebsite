import 'package:flutter/material.dart';
import 'package:sgwebsite/constants/colors.dart'; 
import 'package:sgwebsite/styles/textStyleRow.dart';
import 'package:sgwebsite/widgets/ProgramFeatures.dart'; 

class EducationProgramsScreen extends StatelessWidget {
  const EducationProgramsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1400,
      width: double.maxFinite,
      color: CustomColor.ColorBackground,
      child: const Padding(
        padding: EdgeInsets.only(top: 200.0, right: 140),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // العنوان الرئيسي
            Text(
              "البرامج التعليمية",
              style: TextStyle(
                  fontSize: 64,
                  color: CustomColor.ColorGreen,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Text(
              "تقدم بوابة العلوم مجموعة متنوعة من البرامج التعليمية التي تلبي احتياجات \nالطلاب في مختلف المراحل الدراسية",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 30),
            // البطاقات
            ProgramFeatures(),
            SizedBox(height: 160),
            // قسم المعهد المتوسط
            MiddleInstitutePrograms(),
          ],
        ),
      ),
    );
  }
}
