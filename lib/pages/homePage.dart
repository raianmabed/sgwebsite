import 'package:flutter/material.dart';
import 'package:sgwebsite/widgets/FAQSection.dart';
import 'package:sgwebsite/widgets/FooterSection.dart';
import 'package:sgwebsite/widgets/HighInstitute.dart';
import 'package:sgwebsite/widgets/eduprog.dart';
import 'package:sgwebsite/widgets/intro.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // قائمة بالعناصر لتمريرها إلى ListView.builder
  final List<Widget> sections = [
    // المقدمة
    IntroductionSection(),

    // البرامج التعليمية
    const EducationProgramsScreen(),

    // البــرامج التعليميـة للمعهد العــــالي
    const HighInstitutePrograms(),

    // أسئلة شائعة
    const FAQSection(),

    // الفوتر
    const FooterSection(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: sections.length, // عدد العناصر في القائمة
          itemBuilder: (BuildContext context, int index) {
            return sections[index]; // إرجاع العنصر بناءً على الفهرس
          },
        ),
      ),
    );
  }
}
