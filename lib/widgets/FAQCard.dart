import 'package:flutter/material.dart';
import 'package:sgwebsite/constants/colors.dart'; 
import 'package:sgwebsite/styles/textStyleRow.dart';


class FAQCard extends StatelessWidget {
  final String question;
  final List<String> answers;

  const FAQCard({
    Key? key,
    required this.question,
    required this.answers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ExpansionTile(
        collapsedTextColor: CustomColor.ColorTextgry,
        collapsedIconColor: CustomColor.ColorAmber,
        textColor: CustomColor.ColorAmber,
        title: Text(
          question,
          style: const TextStyle(fontSize: 20),
        ),
        children: answers
            .map((answer) => ListTile(
                  title: Text(
                    answer,
                    style: const TextStyle(fontSize: 16),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
