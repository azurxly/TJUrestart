import 'package:flutter/material.dart';
import 'game_end.dart';
import 'back_pack.dart';

class GameStart extends StatefulWidget {
  const GameStart({Key? key}) : super(key: key);

  @override
  State<GameStart> createState() => _GameStartState();
}

class _GameStartState extends State<GameStart> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: FractionalOffset.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 3,color: Colors.black),
                      borderRadius: const BorderRadius.all(Radius.circular(10))
                  ),
                  child: const Text(
                    "社交技能：114     \n\n"
                    "知识技能：514     \n\n"
                    "摸鱼技能：114     \n\n"
                    "emo指数：514     ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      height: 1,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BackPack()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 3,color: Colors.black),
                        borderRadius: const BorderRadius.all(Radius.circular(10))
                    ),
                    child: const Text(
                      '\n\n'
                      '我的小书包     '
                      '\n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1.45,fontSize: 18.0
                      ),
                    ),
                  ),
                ),
              ]
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 3,color: Colors.black),
                  borderRadius: const BorderRadius.all(Radius.circular(10))
              ),
              child: const Text(
                '\n\n'
                "社交技能：114                 \n\n"
                "知识技能：514                 \n\n"
                "摸鱼技能：114                 \n\n"
                "emo指数：514                 "
                '\n\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  height: 1,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const GameEnd()));
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 3,color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                ),
                child: const Text('开启下一个月  ', textAlign: TextAlign.center,style: TextStyle(height: 2,fontSize: 24.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}