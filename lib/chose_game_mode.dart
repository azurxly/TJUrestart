import 'package:flutter/material.dart';
import 'package:restart/chosen_mode.dart';
import 'package:restart/random_mode.dart';
class ChoseGameMode extends StatefulWidget{
  const ChoseGameMode({Key? key}) : super(key: key);

  @override
  State<ChoseGameMode> createState() => _ChoseGameModeState();
}

class _ChoseGameModeState extends State<ChoseGameMode>{

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image:DecorationImage(
                image: AssetImage("assets/images/page3.jpg"),
                fit: BoxFit.cover

            )
        ),
        padding: EdgeInsets.only(top: 42,left: 41),
        child: Column(
          children: [
            Spacer(),
            Row(
                children:[
                  SizedBox(
                    height: 105,
                    width: 230,
                    child: Container(
                      alignment: Alignment(0,0),
                      padding: EdgeInsets.all(6),
                      child: Column(
                          children: [
                            Text("请问你希望如何选择重开后的专业？",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  ChosenMode()));
                                  },
                                  child: Container(
                                    width: 80,
                                    height: 30,
                                    alignment: Alignment(0,0),
                                    color: Colors.black,
                                    child: Text(
                                      "自由选择",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RandomMode()));
                                  },
                                  child: Container(
                                    width: 80,
                                    height: 30,
                                    alignment: Alignment(0,0),
                                    color: Colors.black,
                                    child: Text(
                                      "随机选择",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer()
                              ],
                            )
                          ],
                        )

                    ),
                  ),
                ]
            ),
            Spacer(),
          ],
        )

    );
  }
}