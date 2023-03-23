import 'package:flutter/material.dart';
import 'package:restart/game_page.dart';

class GameStart extends StatefulWidget {
  final majorNumber;
  final name;
  final fish;
  final sociality;
  final emo;
  final knowledge;
  const GameStart({
    required this.majorNumber,
    required this.name,
    required this.fish,
    required this.sociality,
    required this.emo,
    required this.knowledge,
    Key? key}) : super(key: key);

  @override
  State<GameStart> createState() => _GameStartState();
}

class _GameStartState extends State<GameStart> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double PhoneWidth = size.width;
    double PhoneHeight = size.height;
    String name = widget.name;
    int majorNumber = widget.majorNumber;
    int fish = widget.fish;
    int sociality = widget.sociality;
    int emo = widget.emo;
    int knowledge = widget.knowledge;
    return Container(
      color: Colors.black,
      padding: EdgeInsets.fromLTRB(35, 80, 35, 35),
      child: Column(
        children: [
          Text("你拖着行李，地图导航着宿舍的方向，忽然一位热情的学长/学姐拦住了你，询问你要不要办理学生卡：",
            style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontSize: 24
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Text(
              "你是新生吗？我来帮你吧！",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontSize: 16
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Image.asset("assets/images/笨手笨脚 .jpg",
              fit: BoxFit.fill,),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 130,
                height: 30,
                color: Colors.white,
                child: Text("欣然接受",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20,
                      color: Colors.black
                  ),),
              ),
              Spacer(),
              Container(
                width: 130,
                height: 30,
                color: Colors.white,
                child: Text("不予理会",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20,
                      color: Colors.black
                  ),),
              ),
            ],
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => GamePage
                  (knowledge: knowledge,emo: emo,fish: fish,sociality: sociality,name: name,majorNumber: majorNumber)),
                    (Route<dynamic> route) => false,
              );

            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 3)
              ),
              height: 45,
              width: double.infinity,
              child: Text(
                "立即开始大学生活",
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
    );
  }
}