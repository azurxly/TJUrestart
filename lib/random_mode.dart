import 'dart:math';
import 'package:flutter/material.dart';
import 'package:restart/game_start.dart';

class RandomMode extends StatefulWidget {
  final name;
  const RandomMode({required this.name,Key? key}) : super(key: key);

  @override
  State<RandomMode> createState() => _RandomModeState();
}

class _RandomModeState extends State<RandomMode> {

  @override
  Widget build(BuildContext context) {
    String name = widget.name;
    int majorNumber = Random().nextInt(20) + 1;
    String major = ' ';
    int fish = Random().nextInt(10)+0;
    int sociality = Random().nextInt(10 - fish) + 0;
    int knowledge = Random().nextInt(10 - fish - sociality) + 0;
    int emo = 10 - fish -sociality - knowledge;
    switch (majorNumber){
      case 1:
        major = '机械工程学院';
        break;
      case 2:
        major = '精密仪器与光电子工程学院';
        break;
      case 3:
        major = '电气自动化与信息工程学院';
        break;
      case 4:
        major = '微电子学院';
        break;
      case 5:
        major = '建筑学院';
        break;
      case 6:
        major = '化工学院';
        break;
      case 7:
        major = '材料科学与工程学院';
        break;
      case 8:
        major = '管理与经济学部';
        break;
      case 9:
        major = '理学院';
        break;
      case 10:
        major = '外国语言与文学学院';
        break;
      case 11:
        major = '教育学院';
        break;
      case 12:
        major = '环境科学与工程学院';
        break;
      case 13:
        major = '智能与计算学部';
        break;
      case 14:
        major = '生命科学学院';
        break;
      case 15:
        major = '海洋科学与技术学院';
        break;
      case 16:
        major = '法学院';
        break;
      case 17:
        major = '数学学院';
        break;
      case 18:
        major = '医学部';
        break;
      case 19:
        major = '马克思主义学院';
        break;
      case 20:
        major = '地球系统科学学院';
    }
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(35, 50, 35, 0),
            child: Column(
              children: [
                Container(
                  alignment: const Alignment(-1,0),
                  child: const Text("\n这是你的技能点数与专业：",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.only(left: 50,right: 50,top: 50,bottom: 30),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
            ),
            width: double.infinity,
            height: 650,
            child:Column(
              children: [
                Container(
                  child: Text(
                    "$name，你的专业是：\n$major\n你的初始知识点为：$knowledge\n你的初始社交点为：$sociality\n你的初始摸鱼点为：$fish\n你的初始emo点为：$emo",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontSize: 25,
                      height: 2.5,
                    ),
                  ),
                ),
                const Spacer(),
                //这里填点数
                GestureDetector(
                  onTap: () {
                    setState(() {

                    });
                  },
                  child: Container(
                    color: Colors.black,
                    height: 40,
                    width: double.infinity,
                    child: const Text(
                      "不满意？重新开！",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => GameStart
                      (fish: fish,knowledge: knowledge, emo: emo,sociality: sociality,name: name, majorNumber: majorNumber,)));
                  },
                  child: Container(
                    color: Colors.black,
                    height: 40,
                    width: double.infinity,
                    child: const Text(
                      "选好啦！",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}