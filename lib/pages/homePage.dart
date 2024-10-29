import 'package:flutter/material.dart';
import 'package:sgwebsite/constants/colors.dart';
import 'package:sgwebsite/styles/textStyleRow.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //المقدمة
          Stack(children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/background.png"),
                fit: BoxFit.fill,
              )),
              height: 1003,
              width: double.maxFinite,
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Home",
                            style: Sgtextstyle.headingStyle,
                          )),
                      SizedBox(width: 25),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Courses",
                            style: Sgtextstyle.headingStyle,
                          )),
                      SizedBox(width: 350),
                      Image(
                        image: AssetImage("assets/logo.png"),
                        width: 200,
                        height: 120,
                      ),
                      SizedBox(width: 350),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Contact",
                            style: Sgtextstyle.headingStyle,
                          )),
                      SizedBox(width: 25),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "FAQ",
                            style: Sgtextstyle.headingStyle,
                          )),
                    ],
                  ),
                ),
              ),
            ),
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
                          fontSize: 18),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(CustomColor.ColorAmber),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 20, horizontal: 60)),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      " Learn More",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                          fontSize: 18),
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 20, horizontal: 60)),
                    ),
                  ),
                ],
              ),
            ),
          ]),
          //البرامج التعليمية
          Container(
            height: 2100,
            width: double.maxFinite,
            color: CustomColor.ColorBackground,
            child: const Padding(
              padding: EdgeInsets.only(top: 200.0, right: 140),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "البرامج التعليمية",
                    style: TextStyle(
                        fontSize: 64,
                        color: CustomColor.ColorGreen,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "تقدم بوابة العلوم مجموعة متنوعة من البرامج التعليمية التي تلبي احتياجات \nالطلاب في مختلف المراحل الدراسية",
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 120),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 240,
                          width: 310,
                          child: Card.filled(
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'شهادة معتمدة',
                                  style: TextStyle(
                                    color: CustomColor.ColorAmber,
                                    fontSize: 28,
                                  ),
                                ),
                                Text(
                                  "جميع برامجنا معتمدة من\n وزارة التعليم الليبية",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: CustomColor.ColorTextgry,
                                    fontSize: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 240,
                          width: 310,
                          child: Card.filled(
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'مرونة في الدراسة',
                                  style: TextStyle(
                                    color: CustomColor.ColorAmber,
                                    fontSize: 28,
                                  ),
                                ),
                                Text(
                                  " نظامان للدراسة\n (النظامي والانتساب)",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: CustomColor.ColorTextgry,
                                    fontSize: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 240,
                          width: 310,
                          child: Card.filled(
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'كادر تدريسي مؤهل',
                                  style: TextStyle(
                                    color: CustomColor.ColorAmber,
                                    fontSize: 28,
                                  ),
                                ),
                                Text(
                                  "نخبة من الأساتذة ذوي\n الخبرة والكفاءة",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: CustomColor.ColorTextgry,
                                    fontSize: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 160,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "البــرامج التعليميـة \nللمعهد المتوسط",
                            style: TextStyle(
                                fontSize: 64,
                                color: CustomColor.ColorGreen,
                                fontWeight: FontWeight.bold),
                              
                          ),
                          SizedBox(height: 30),
                          Text(
                              "نقدم مجموعة متنوعة من البرامج التعليمية على\n مستوى المعهد المتوسط، تم تصميمها لتزويد\n الطلاب بالمهارات الأساسية التي يحتاجونها  لمواصلة\n تعليمهم في مجالات متقدمة. وتشمل هذه البرامج\n تخصصات:",style: TextStyle(
                                fontSize: 24,
                                color: CustomColor.ColorTextgry
                              ),)
                        ],
                      ),
                      SizedBox(width: 200,),
                      Column(
                        children: [
                          SizedBox(
                          height: 200,
                          width: 397,
                          child: Card.filled(

                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                 Image(
                        image: AssetImage("assets/code.png"),
                        width: 77,
                        height: 77,
                      ),
                                Text(
                                  ' الحاسب الآلي',
                                  style: TextStyle(
                                    color: CustomColor.ColorGreen,
                                    fontSize: 32,
                                  ),
                                ),
                                Text(
                                  "تطوير مهارات الحوسبة الأساسية والتقنيات الحديثة.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: CustomColor.ColorTextgry,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          //التواصل
          Container(
            height: 500,
            width: double.maxFinite,
            color: const Color.fromARGB(255, 230, 224, 206),
          ),
          //أسئلة شائعة
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
