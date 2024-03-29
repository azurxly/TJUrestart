import 'package:flutter/material.dart';
import 'package:restart/game_start.dart';

int Number = 0;
String major = '我还没选专业不能进行下一步！';

class ChosenSchool extends StatefulWidget {
  final name;
  final fish;
  final sociality;
  final emo;
  final knowledge;
  const ChosenSchool({
    required this.name,
    required this.fish,
    required this.sociality,
    required this.emo,
    required this.knowledge,
    Key? key}) : super(key: key);

  @override
  State<ChosenSchool> createState() => _ChosenSchoolState();
}
class _ChosenSchoolState extends State<ChosenSchool> {

  @override
  Widget build(BuildContext context) {
    //
    //专业数据
    //
    List<Widget> schoollist = [
      SizedBox(
        width: 400,
        height: 60,
        child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Number = 1;
                  major = '我选机械工程学院！';
                  setState(() {

                  });
                },
                child: Text(
                  '机械工程学院',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),]
        ),
      ),
      SizedBox(
        width: 400,
        height: 60,
        child: Column(
            children: [
              GestureDetector(
                onTap: () { Number = 2;
                  major = '我选精密仪器与光电子工程学院！';
                  setState(() {

                  });
                  },
                child: Text(
                  '精密仪器与光电子工程学院',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),]
        ),
      ),
      SizedBox(
        width: 400,
        height: 60,
        child: Column(
            children: [
              GestureDetector(
                onTap: () { Number = 3;
                  major = '我选电气自动化与信息工程学院！';
                  setState(() {

                  });
                  },
                child: Text(
                  '电气自动化与信息工程学院',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),]
        ),
      ),
      SizedBox(
        width: 400,
        height: 60,
        child: Column(
            children: [
              GestureDetector(
                onTap: () { Number = 4;
                  major = '我选微电子学院！';
                  setState(() {

                  });
                  },
                child: Text(
                  '微电子学院',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),]
        ),
      ),
      SizedBox(
        width: 400,
        height: 60,
        child: Column(
            children: [
              GestureDetector(
                onTap: () { Number = 5;
                  major = '我选建筑学院！';
                  setState(() {

                  });
                  },
                child: Text(
                  '建筑学院',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),]
        ),
      ),
      SizedBox(
        width: 400,
        height: 60,
        child: Column(
            children: [
              GestureDetector(
                onTap: () { Number = 6;
                  major = '我选化工学院！';
                  setState(() {

                  });
                  },
                child: Text(
                  '化工学院',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),]
        ),
      ),
      SizedBox(
        width: 400,
        height: 60,
        child: Column(
            children: [
              GestureDetector(
                onTap: () { Number = 7;
                  major = '我选材料科学与工程学院！';
                  setState(() {

                  });
                  },
                child: Text(
                  '材料科学与工程学院',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),]
        ),
      ),
      SizedBox(
        width: 400,
        height: 60,
        child: Column(
            children: [
              GestureDetector(
                onTap: () { Number = 8;
                  major = '我选管理与经济学部！';
                  setState(() {

                  });
                  },
                child: Text(
                  '管理与经济学部',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),]
        ),
      ),
      SizedBox(
        width: 400,
        height: 60,
        child: Column(
            children: [
              GestureDetector(
                onTap: () { Number = 9;
                  major = '我选理学院！';
                  setState(() {

                  });
                  },
                child: Text(
                  '理学院',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),]
        ),
      ),
      SizedBox(
        width: 400,
        height: 60,
        child: Column(
            children: [
              GestureDetector(
                onTap: () { Number = 10;
                  major = '我选外国语言与文学学院！';
                  setState(() {

                  });
                  },
                child: Text(
                  '外国语言与文学学院',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),]
        ),
      ),
      SizedBox(
        width: 400,
        height: 60,
        child: Column(
            children: [
              GestureDetector(
                onTap: () { Number = 11;
                  major = '我选教育学院！';
                  setState(() {

                  });
                  },
                child: Text(
                  '教育学院',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),]
        ),
      ),
      SizedBox(
        width: 400,
        height: 60,
        child: Column(
            children: [
              GestureDetector(
                onTap: () { Number = 12;
                  major = '我选环境科学与工程学院！';
                  setState(() {

                  });
                  },
                child: Text(
                  '环境科学与工程学院',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),]
        ),
      ),
      SizedBox(
        width: 400,
        height: 60,
        child: Column(
            children: [
              GestureDetector(
                onTap: () { Number = 13;
                  major = '我选智能与计算学部！';
                  setState(() {

                  });
                  },
                child: Text(
                  '智能与计算学部',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),]
        ),
      ),
      SizedBox(
        width: 400,
        height: 60,
        child: Column(
            children: [
              GestureDetector(
                onTap: () { Number = 14;
                  major = '我选生命科学学院！';
                  setState(() {

                  });
                  },
                child: Text(
                  '生命科学学院',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),]
        ),
      ),
      SizedBox(
        width: 400,
        height: 60,
        child: Column(
            children: [
              GestureDetector(
                onTap: () { Number = 15;
                  major = '我选海洋科学与技术学院！';
                  setState(() {

                  });
                  },
                child: Text(
                  '海洋科学与技术学院',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),]
        ),
      ),
      SizedBox(
        width: 400,
        height: 60,
        child: Column(
            children: [
              GestureDetector(
                onTap: () { Number = 16;
                  major = '我选法学院！';
                  setState(() {

                  });
                  },
                child: Text(
                  '法学院',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),]
        ),
      ),
      SizedBox(
        width: 400,
        height: 60,
        child: Column(
            children: [
              GestureDetector(
                onTap: () { Number = 17;
                  major = '我选数学学院!';
                  setState(() {

                  });
                  },
                child: Text(
                  '数学学院',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),]
        ),
      ),
      SizedBox(
        width: 400,
        height: 60,
        child: Column(
            children: [
              GestureDetector(
                onTap: () { Number = 18;
                  major = '我选医学部！';
                  setState(() {

                  });
                  },
                child: Text(
                  '医学部',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),]
        ),
      ),
      SizedBox(
        width: 400,
        height: 60,
        child: Column(
            children: [
              GestureDetector(
                onTap: () { Number = 19;
                  major = '我选马克思主义学院！';
                  setState(() {

                  });
                  },
                child: Text(
                  '马克思主义学院',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),]
        ),
      ),
      SizedBox(
        width: 400,
        height: 60,
        child: Column(
            children: [
              GestureDetector(
                onTap: () { Number = 20;
                  major = '我选地球系统科学学院！';
                  setState(() {

                  });
                  },
                child: Text(
                  '地球系统科学学院',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),]
        ),
      ),
    ];
    final size = MediaQuery.of(context).size;
    double PhoneWidth = size.width;
    double PhoneHeight = size.height;
    String name = widget.name;
    int majorNumber = Number;
    int fish = widget.fish;
    int knowledge = widget.knowledge;
    int sociality = widget.sociality;
    int emo = widget.emo;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(35, 50, 35, 0),
            child: Column(
              children: [
                Container(
                  alignment: const Alignment(-1,0),
                  child: const Text("请选择你的专业：",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: const EdgeInsets.only(left: 50,right: 50,top: 50,bottom: 30),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
            ),
            width: double.infinity,
            height: 0.7958858822 * PhoneHeight,
            child:Column(
              children: [
                //
                //专业栏
                //
                Container(
                  height: 0.59 * PhoneHeight,
                  child:
                  ListView(
                      children: schoollist,
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => GameStart
                        (knowledge: knowledge,emo: emo,fish: fish,sociality: sociality,majorNumber: majorNumber, name: name,)),
                          (Route<dynamic> route) => false,
                    );
                    },
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.black,
                    height: 45,
                    width: double.infinity,
                    child: Text(
                      major,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ]
      )
    );
  }
}