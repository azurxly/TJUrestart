import 'package:flutter/material.dart';
import 'random_mode.dart';
import 'chosen_mode.dart';

class GameMode extends StatefulWidget{
  const GameMode({Key? key}) : super(key: key);

  @override
  State<GameMode> createState() => _GameModeState();
}

class _GameModeState extends State<GameMode>{

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
                '\n\n'
                "模式选取                     "
                '\n\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 36.0,
                  height: 1,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RandomMode()));
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 3,color: Colors.black),
                  borderRadius: const BorderRadius.all(Radius.circular(10))
                ),
                child: const Text(
                  '随机模式\n\n''(随机分配专业与属性)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                    height: 1.2,
                  )
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ChosenMode()));
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 3,color: Colors.black),
                  borderRadius: const BorderRadius.all(Radius.circular(10))
                ),
                child: const Text(
                  '自由模式\n\n''(自行分配专业与属性)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                    height: 1.2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}