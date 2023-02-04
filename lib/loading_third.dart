import 'package:flutter/material.dart';
import 'package:restart/report.dart';
import 'not_done.dart';
import 'game_page.dart';
class LoadPageThird extends StatefulWidget {
  const LoadPageThird({Key? key}) : super(key: key);

  @override
  State<LoadPageThird> createState() => _LoadPageThirdState();
}

class _LoadPageThirdState extends State<LoadPageThird> {

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(50, 450, 50, 50),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/load2.jpg"),
                fit: BoxFit.cover
            )
        ),
        child:Column(
          children: [

            Container(
              alignment: Alignment(-1,0),
              child: Text(
                "Loading……",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 30,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 3)
              ),
              child:Text(
                "这里有动画",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 10
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              child: Text("你的大学生活圆满结束！\n新的人生旅程正等着你！",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13
                ),),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Report()));
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black
                ),
                height: 45,
                width: double.infinity,
                child: Text(
                  "查看报告",
                  textAlign: TextAlign.center,
                  style: TextStyle(
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