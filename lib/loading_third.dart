import 'package:flutter/material.dart';
import 'package:restart/report.dart';

class LoadPageThird extends StatefulWidget {
  final int majorNumber;
  final int emo;
  final int fish;
  final int sociality;
  final int knowledge;
  final String name;
  const LoadPageThird({
    required this.majorNumber,
    required this.emo,
    required this.fish,
    required this.sociality,
    required this.knowledge,
    required this.name,
    Key? key}) : super(key: key);

  @override
  State<LoadPageThird> createState() => _LoadPageThirdState();
}

class _LoadPageThirdState extends State<LoadPageThird> {

  @override
  Widget build(BuildContext context) {
    int majorNumber = widget.majorNumber;
    int emo = widget.emo;
    int fish = widget.fish;
    int sociality = widget.sociality;
    int knowledge = widget.knowledge;
    String name = widget.name;
    final size = MediaQuery.of(context).size;
    double PhoneWidth = size.width;
    double PhoneHeight = size.height;
    return Container(
        padding: EdgeInsets.fromLTRB(50, 0.5509979 * PhoneHeight, 50, 50),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/load2.jpg"),
                fit: BoxFit.cover
            )
        ),
        child:Column(
          children: [
            Container(
              alignment: const Alignment(-1,0),
              child: const Text(
                "Loading……",
                textAlign: TextAlign.left,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 25
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 30,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 3)
              ),
              child:const Text(
                "这里有动画",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 10
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              width: double.infinity,
              child: Text("你的大学生活圆满结束！\n新的人生旅程正等着你！",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 13
                ),),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => Report
                    (name: name, majorNumber: majorNumber, fish: fish, knowledge: knowledge, emo: emo, sociality: sociality,)),
                      (Route<dynamic> route) => false,
                );
              },
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Colors.black
                ),
                height: 45,
                width: double.infinity,
                child: const Text(
                  "查看报告",
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
        )
    );
  }
}