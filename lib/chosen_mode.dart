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
            height: 550,
            child: Column(
              children: [
                Text("当前可用技能点：$sumpoint",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20
                  ),
                ),//这// 里填点数
                Spacer(),
                Container(
                  height: 70,
                  child: Row(
                    children: [
                      Text("emo技能:",style: TextStyle(
                          color: Colors.black,
                          fontSize: 18
                      ),),
                      RawMaterialButton(
                        onPressed: () {
                          if(emo > 0) {
                            emo--;
                            sumpoint++;
                            setState(() {

                            });
                          }
                            },//这里代表变量减少（emo）
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
                              color: Colors.black,
                              fontSize: 20
                          ),)
                      ),
                      RawMaterialButton(
                        onPressed: () {
                          if(sumpoint>0){
                            sumpoint--;
                            emo++;
                            setState(() {

                            });
                          }
                        },//这里代表变量增加
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
                  height: 70,

                  child: Row(
                    children: [
                      Text("知识技能:",style: TextStyle(
                          color: Colors.black,
                          fontSize: 18
                      ),),
                      RawMaterialButton(
                        onPressed: () {
                          if(knowledge > 0){
                            knowledge--;
                            sumpoint++;
                            setState(() {

                            });
                          }
                        },//这里代表变量减少（知识）
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
                          child:Text("$knowledge",style: TextStyle(
                              color: Colors.black,
                              fontSize: 20
                          ),)
                      ),
                      RawMaterialButton(
                        onPressed: () {
                          if(sumpoint > 0){
                            sumpoint--;
                            knowledge++;
                            setState(() {

                            });
                          }
                        },//这里代表变量增加
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
                  height: 70,

                  child: Row(
                    children: [
                      Text("社交技能:",style: TextStyle(
                          color: Colors.black,
                          fontSize: 18
                      ),),
                      RawMaterialButton(
                        onPressed: () {
                          if(sociality > 0){
                            sociality--;
                            sumpoint++;
                            setState(() {

                            });
                          }
                        },//这里代表变量减少（社交）
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
                          child:Text("$sociality",style: TextStyle(
                              color: Colors.black,
                              fontSize: 20
                          ),)
                      ),
                      RawMaterialButton(
                        onPressed: () {
                          if(sumpoint > 0){
                            sumpoint--;
                            sociality++;
                            setState(() {

                            });
                          }
                        },//这里代表变量增加
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
                  height: 70,

                  child: Row(
                    children: [
                      Text("摸鱼技能:",style: TextStyle(
                          color: Colors.black,
                          fontSize: 18
                      ),),
                      RawMaterialButton(
                        onPressed: () {
                          if(fish > 0){
                            fish--;
                            sumpoint++;
                            setState(() {

                            });
                          }
                        },//这里代表变量减少（摸鱼）
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
                          child:Text("$fish",style: TextStyle(
                              color: Colors.black,
                              fontSize: 20
                          ),)
                      ),
                      RawMaterialButton(
                        onPressed: () {
                          if(sumpoint > 0){
                            sumpoint--;
                            fish++;
                            setState(() {

                            });
                          }
                        },//这里代表变量增加
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
                const Spacer(), //这里填点数
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ChosenSchool
                          (knowledge: knowledge,emo: emo,fish: fish,sociality: sociality,name: name,)));
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
