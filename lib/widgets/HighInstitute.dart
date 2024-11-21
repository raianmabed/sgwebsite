import 'package:flutter/material.dart';
import 'package:sgwebsite/constants/colors.dart'; 
import 'package:sgwebsite/styles/textStyleRow.dart';
import 'package:sgwebsite/widgets/programshighinstitute.dart.dart';

class HighInstitutePrograms extends StatelessWidget {
  const HighInstitutePrograms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.ColorBackground,
      padding: const EdgeInsets.only(top: 20.0, right: 140),
      height: 700,
      width: double.maxFinite,
      child: const Row(
        children: [
          // البطاقات الأولى
          HighInstituteLeftCards(),
          SizedBox(width: 200),
          // النصوص والبطاقات الأخرى
          HighInstituteDetails(),
        ],
      ),
    );
  }
}
