import 'package:flutter/material.dart';
import 'package:sgwebsite/constants/colors.dart'; 
import 'package:sgwebsite/styles/textStyleRow.dart'; 

class IntroductionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // خلفية الصفحة
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.fill,
            ),
          ),
          height: 1003,
          width: double.infinity, 
        ),
        // شريط التنقل العلوي
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildNavButton("Home", () {}),
                SizedBox(width: 25),
                _buildNavButton("Courses", () {}),
                SizedBox(width: 350),
                Image(
                  image: AssetImage("assets/logo.png"),
                  width: 200,
                  height: 120,
                ),
                SizedBox(width: 350),
                _buildNavButton("Contact", () {}),
                SizedBox(width: 25),
                _buildNavButton("FAQ", () {}),
              ],
            ),
          ),
        ),
        // النص الرئيسي
        Positioned(
          top: 300,
          left: 0,
          right: 0,
          child: Text(
            ' بوابة العلوم للتعليم العالي \nوالمتوسط والتدريب',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 80,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: "rhzak",
            ),
          ),
        ),
        // وصف المعهد
        Positioned(
          top: 570,
          left: 0,
          right: 0,
          child: Text(
            "معهد بوابة العلوم للتعليم العالي والمتوسط هو وجهتكم المثلى لتلقي تعليم عالي الجودة\n من خلال برامج أكاديمية معتمدة. نحن نقدم فرصاً تعليمية متنوعة في مجالات حيوية تهدف إلى \nتأهيل الطلاب لسوق العمل والمساهمة في تطوير مهاراتهم الأكاديمية والمهنية.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontFamily: "rhzak",
            ),
          ),
        ),
        // أزرار الاستكشاف والتعلم
        Positioned(
          top: 720,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "استكشف برامجنا",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(CustomColor.ColorAmber),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                  ),
                ),
              ),
              SizedBox(width: 50),
              OutlinedButton(
                onPressed: () {},
                child: Text(
                  " Learn More",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  //   أزرار شريط التنقل  
  Widget _buildNavButton(String title, VoidCallback onPressed) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: Sgtextstyle.headingStyle,
      ),
    );
  }
}
