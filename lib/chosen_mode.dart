import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restart/school_chose.dart';
import 'game_start.dart';

class ChosenMode extends StatefulWidget {
  @override
  State<ChosenMode> createState() => _ChosenModeState();
}

class _ChosenModeState extends State<ChosenMode> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(35, 50, 35, 0),
            child: Column(
              children: [
                Container(
                  alignment: Alignment(-1, 0),
                  child: Text("请选择你的技能：",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment(-1, 0),
                  child: Text("规则：你共有10个技能点，请合理分配哦！",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.only(left: 50, right: 50, top: 50, bottom: 30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            width: double.infinity,
            height: 550,
            child: Column(
              children: [
                Spacer(), //这里填点数
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ChosenSchool()));
                  },
                  child: Container(
                    color: Colors.black,
                    height: 40,
                    width: double.infinity,
                    child: Text(
                      "选好啦！",
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
          )
        ],
      ),
    );
  }
}
