import 'package:flutter/material.dart';
import 'game_start.dart';

class BackPack extends StatefulWidget {
  const BackPack({Key? key}) : super(key: key);

  @override
  State<BackPack> createState() => _BackPackState();
}

class _BackPackState extends State<BackPack> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const GameStart()));
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 3,color: Colors.black),
                  borderRadius: const BorderRadius.all(Radius.circular(10))
              ),
              child: const Text('返回',textAlign: TextAlign.center,style: TextStyle(height: 1.4,fontSize: 24.0)),
            ),
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(width: 3,color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(10))
            ),
            child: const Text(
              '\n\n'
              "物品                              "
              '\n\n',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36.0,
                height: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}