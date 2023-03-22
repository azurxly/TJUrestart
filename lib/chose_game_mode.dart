import 'package:flutter/material.dart';
import 'package:restart/chosen_mode.dart';
import 'package:restart/random_mode.dart';
class ChoseGameMode extends StatefulWidget{
  final name;
  const ChoseGameMode({required this.name, Key? key}) : super(key: key);

  @override
  State<ChoseGameMode> createState() => _ChoseGameModeState();
}

class _ChoseGameModeState extends State<ChoseGameMode>{

  @override
  Widget build(BuildContext context) {
    String name = widget.name;
    return Container(
        decoration: const BoxDecoration(
            image:DecorationImage(
                image: AssetImage("assets/images/page3.jpg"),
                fit: BoxFit.cover

            )
        ),
        padding: const EdgeInsets.only(top: 42,left: 41),
        child: Column(
          children: [
            const Spacer(),
            Row(
                children:[
                  SizedBox(
                    height: 105,
                    width: 230,
                    child: Container(
                      alignment: const Alignment(0,0),
                      padding: const EdgeInsets.all(6),
                      child: Column(
                          children: [
                            const Text("请问你希望如何选择重开后的专业？",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                const Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  ChosenMode(name: name,)));
                                  },
                                  child: Container(
                                    width: 80,
                                    height: 30,
                                    alignment: const Alignment(0,0),
                                    color: Colors.black,
                                    child: const Text(
                                      "自由选择",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                        color: Colors.white,
                                        fontSize: 16
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => RandomMode(name: name,)));
                                  },
                                  child: Container(
                                    width: 80,
                                    height: 30,
                                    alignment: const Alignment(0,0),
                                    color: Colors.black,
                                    child: const Text(
                                      "随机选择",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          color: Colors.white,
                                          fontSize: 16
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer()
                              ],
                            )
                          ],
                        )
                    ),
                  ),
                ]
            ),
            const Spacer(),
          ],
        )
    );
  }
}