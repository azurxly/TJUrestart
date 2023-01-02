import 'package:flutter/material.dart';
import 'package:restart/game_mode.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
                "天大重开模拟器    "
                '\n\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                fontSize: 36.0,
                height: 1.2,
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
                child: const Text('\n\n''立即重开！        ''\n\n',textAlign: TextAlign.center,style: TextStyle(height: 0.5,fontSize: 24.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}