import 'package:flutter/material.dart';
import 'package:restart/loading.dart';
class ChosenSchool extends StatefulWidget {
  const ChosenSchool({Key? key}) : super(key: key);

  @override
  State<ChosenSchool> createState() => _ChosenSchoolState();
}

class _ChosenSchoolState extends State<ChosenSchool> {

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
                  alignment: Alignment(-1,0),
                  child: Text("请选择你的专业：",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Colors.white,
                  ),
                  height: 35,
                  width: 300,
                  padding: EdgeInsets.only(left: 10,right: 5),
                  child: Row(
                    children: [
                      Text("搜索专业",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Spacer(),
                      //这里搜索
                    ],
                  )
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.only(left: 50,right: 50,top: 50,bottom: 30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
            ),
            width: double.infinity,
            height: 550,
            child:Column(
              children: [
                Spacer(),//这里填点数
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoadPage()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.black,
                    height: 45,
                    width: double.infinity,
                    child: Text(
                      "随机抽一个!",
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