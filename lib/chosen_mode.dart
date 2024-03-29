import 'package:flutter/material.dart';
import 'package:restart/school_chose.dart';
int fish = 0;
int sociality = 0;
int knowledge = 0;
int emo = 0;
int sumpoint = 10;
class ChosenMode extends StatefulWidget {
  final name;
  const ChosenMode({required this.name,Key? key}) : super(key: key);

  @override
  State<ChosenMode> createState() => _ChosenModeState();
}

class _ChosenModeState extends State<ChosenMode> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double PhoneWidth = size.width;
    double PhoneHeight = size.height;
    String name = widget.name;
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(35, 50, 35, 0),
            child: Column(
              children: [
                Container(
                  alignment: const Alignment(-1, 0),
                  child: const Text("请选择你的技能：",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: const Alignment(-1, 0),
                  child: const Text("规则：你共有10个技能点，请合理分配哦！",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 50, bottom: 30),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            width: double.infinity,
            height: PhoneHeight * 0.6734419,
            child: Column(
              children: [
                Text("当前可用技能点：$sumpoint",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontSize: 24
                  ),
                ),
                Spacer(),
                Container(
                  height: PhoneHeight * 0.08571,
                  child: Row(
                    children: [
                      Text("emo技能:",style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 18
                      ),),
                      RawMaterialButton(
                        //
                        //这里代表变量减少（emo）
                        //
                        onPressed: () {
                          if(emo > 0) {
                            emo--;
                            sumpoint++;
                            setState(() {

                            });
                          }
                            },
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.remove,
                          size: 26,
                          color: Colors.black,
                        ),
                        padding: EdgeInsets.all(5.0),
                        shape: CircleBorder(),

                      ),
                      Container(
                        //把data换成变量
                          child:Text("$emo",style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontSize: 20
                          ),)
                      ),
                      RawMaterialButton(
                        //
                        //这里代表变量增加（emo）
                        //
                        onPressed: () {
                          if(sumpoint>0){
                            sumpoint--;
                            emo++;
                            setState(() {

                            });
                          }
                        },
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.add,
                          size: 26,
                          color: Colors.black,
                        ),
                        padding: EdgeInsets.all(5.0),
                        shape: CircleBorder(),

                      ),
                    ],
                  ),
                ),
                Container(
                  height: PhoneHeight * 0.08571,

                  child: Row(
                    children: [
                      Text("知识技能:",style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 18
                      ),),
                      RawMaterialButton(
                        //
                        //这里代表变量减少（知识）
                        //
                        onPressed: () {
                          if(knowledge > 0){
                            knowledge--;
                            sumpoint++;
                            setState(() {

                            });
                          }
                        },
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.remove,
                          size: 26,
                          color: Colors.black,
                        ),
                        padding: EdgeInsets.all(5.0),
                        shape: CircleBorder(),

                      ),
                      Container(
                          child:Text("$knowledge",style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontSize: 18
                          ),)
                      ),
                      RawMaterialButton(
                        //
                        //这里代表变量增加（知识）
                        //
                        onPressed: () {
                          if(sumpoint > 0){
                            sumpoint--;
                            knowledge++;
                            setState(() {

                            });
                          }
                        },
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.add,
                          size: 26,
                          color: Colors.black,
                        ),
                        padding: EdgeInsets.all(5.0),
                        shape: CircleBorder(),

                      ),
                    ],
                  ),
                ),
                Container(
                  height: PhoneHeight * 0.08571,

                  child: Row(
                    children: [
                      Text("社交技能:",style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 18
                      ),),
                      RawMaterialButton(
                        //
                        //这里代表变量减少（社交）
                        //
                        onPressed: () {
                          if(sociality > 0){
                            sociality--;
                            sumpoint++;
                            setState(() {

                            });
                          }
                        },
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.remove,
                          size: 26,
                          color: Colors.black,
                        ),
                        padding: EdgeInsets.all(5.0),
                        shape: CircleBorder(),

                      ),
                      Container(
                          child:Text("$sociality",style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontSize: 17
                          ),)
                      ),
                      RawMaterialButton(
                        //
                        //这里代表变量增加（社交）
                        //
                        onPressed: () {
                          if(sumpoint > 0){
                            sumpoint--;
                            sociality++;
                            setState(() {

                            });
                          }
                        },
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.add,
                          size: 26,
                          color: Colors.black,
                        ),
                        padding: EdgeInsets.all(5.0),
                        shape: CircleBorder(),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: PhoneHeight * 0.08571,

                  child: Row(
                    children: [
                      Text("摸鱼技能:",style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 18
                      ),),
                      RawMaterialButton(
                        //
                        //这里代表变量减少（摸鱼）
                        //
                        onPressed: () {
                          if(fish > 0){
                            fish--;
                            sumpoint++;
                            setState(() {

                            });
                          }
                        },
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.remove,
                          size: 26,
                          color: Colors.black,
                        ),
                        padding: EdgeInsets.all(5.0),
                        shape: CircleBorder(),

                      ),
                      Container(
                          child:Text("$fish",style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontSize: 17
                          ),)
                      ),
                      RawMaterialButton(
                        //
                        //这里代表变量增加（摸鱼）
                        //
                        onPressed: () {
                          if(sumpoint > 0){
                            sumpoint--;
                            fish++;
                            setState(() {

                            });
                          }
                        },
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.add,
                          size: 26,
                          color: Colors.black,
                        ),
                        padding: EdgeInsets.all(5.0),
                        shape: CircleBorder(),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => ChosenSchool
                        (knowledge: knowledge,emo: emo,fish: fish,sociality: sociality,name: name,)),
                          (Route<dynamic> route) => false,
                    );
                  },
                  child: Container(
                    color: Colors.black,
                    height: 40,
                    width: double.infinity,
                    child: const Text(
                      "选好啦！",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}