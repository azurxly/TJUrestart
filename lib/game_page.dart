import 'package:flutter/material.dart';
import 'package:restart/loading_third.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {

  @override
  Widget build(BuildContext context) {
    
      return Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(35, 40, 35, 40),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 0.8,
                    color: Colors.grey
                  )
                ]
              ),
              child: Container(
                width: double.infinity,
                height: 100,
                padding: EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 3),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Text("知识技能：    10\n社交技能：    11\n摸鱼技能：    20\nemo指数：  100",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16
                    ),
                    ),
                    Spacer(),
                    SizedBox(
                      height: double.infinity,
                      width: 3,
                      child: Container(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Spacer(),
                            Image(image: AssetImage("assets/images/backpack.png"),
                            width: 50,),
                            Text("我的小书包",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),),
                            Spacer(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 0.8,
                        color: Colors.grey
                    )
                  ]
              ),
              child: Container(
                width: double.infinity,
                height: 500,
                padding: EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 3),
                  color: Colors.white,
                ),
                child:Column(
                  //这里填事件
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoadPageThird()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.black,
                        height: 45,
                        width: double.infinity,
                        child: Text(
                          "事件完成",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    )
                  ],


                ),
              ),
            ),

          ],
        ),
      );
  }
}