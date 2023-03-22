import 'package:flutter/material.dart';
import 'package:restart/game_page.dart';

class BackPack extends StatefulWidget {
  final int majorNumber;
  final String name;
  final fish;
  final sociality;
  final emo;
  final knowledge;
  const BackPack({
    required this.name,
    required this.majorNumber,
    required this.fish,
    required this.sociality,
    required this.emo,
    required this.knowledge,
    Key? key}) : super(key: key);

  @override
  State<BackPack> createState() => _BackPackState();
}

class _BackPackState extends State<BackPack> {

  @override
  Widget build(BuildContext context) {
    int majorNumber = widget.majorNumber;
    String name = widget.name;
    int fish = widget.fish;
    int sociality = widget.sociality;
    int emo = widget.emo;
    int knowledge = widget.knowledge;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => GamePage
                (knowledge: knowledge,emo: emo,fish: fish,sociality: sociality,majorNumber: majorNumber, name: name,)));
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