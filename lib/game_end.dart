import 'package:flutter/material.dart';
import 'package:restart/not_done.dart';
import 'game_mode.dart';
import 'main.dart';

class GameEnd extends StatefulWidget {
  const GameEnd({Key? key}) : super(key: key);

  @override
  State<GameEnd> createState() => _GameEndState();
}

class _GameEndState extends State<GameEnd> {

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
                    "大学生活总结             \n\n",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 36.0,
                  height: 2,
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MyApp()));
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 3,color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                ),
                child: const Text('再次重开          ',textAlign: TextAlign.center,style: TextStyle(height: 2,fontSize: 24.0)),
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
                child: const Text('一键退学          ', textAlign: TextAlign.center,style: TextStyle(height: 2,fontSize: 24.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}