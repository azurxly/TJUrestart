import 'package:flutter/material.dart';
import 'game_start.dart';
import 'game_mode.dart';

class RandomMode extends StatefulWidget {
  const RandomMode({Key? key}) : super(key: key);

  @override
  State<RandomMode> createState() => _RandomModeState();
}

class _RandomModeState extends State<RandomMode> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: FractionalOffset.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 3,color: Colors.black),
                  borderRadius: const BorderRadius.all(Radius.circular(10))
              ),
              child: const Text(
                "您的专业是     \n\n""“专业名称”                  ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 36.0,
                  height: 1.6,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 3,color: Colors.black),
                  borderRadius: const BorderRadius.all(Radius.circular(10))
              ),
              child: const Text(
                "社交技能：114                  \n\n"
                "知识技能：514                  \n\n"
                "摸鱼技能：114                  \n\n"
                "emo指数：514                  ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  height: 1,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const GameMode()));
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 3,color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                ),
                child: const Text('\n\n''不满意？重新开！''\n\n',textAlign: TextAlign.center,style: TextStyle(height: 0.5,fontSize: 24.0)),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const GameStart()));
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 3,color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                ),
                child: const Text('\n\n''开启大学生活        ''\n\n',textAlign: TextAlign.center,style: TextStyle(height: 0.5,fontSize: 24.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}