import 'package:flutter/material.dart';
import 'game_start.dart';
import 'not_done.dart';

class ChosenMode extends StatefulWidget {
  const ChosenMode({Key? key}) : super(key: key);

  @override
  State<ChosenMode> createState() => _ChosenModeState();
}

class _ChosenModeState extends State<ChosenMode> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: FractionalOffset.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NotDone()));
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 3,color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                ),
                child: const Text('\n\n''填报志愿                 ''\n\n',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 36.0,
                    height: 1
                  )
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NotDone()));
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 3,color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                ),
                child: const Text(
                  '天赋选取（10个点数分配）\n\n'
                  '社交技能：114\n\n'
                  '知识技能：514\n\n'
                  '摸鱼技能：114\n\n'
                  'emo指数：514',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.0)),
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