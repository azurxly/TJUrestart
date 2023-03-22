import 'package:flutter/material.dart';
import '../game_page.dart';
class LoadPageTwo extends StatefulWidget {
  const LoadPageTwo({Key? key}) : super(key: key);

  @override
  State<LoadPageTwo> createState() => _LoadPageTwoState();
}

class _LoadPageTwoState extends State<LoadPageTwo> {

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(50, 450, 50, 50),
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
              child: Text("恭喜你开学啦！美好的大学生活也要开始喽！",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13
                ),),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => GamePage(majorNumber: 7, name: '',)));
              },
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Colors.black
                ),
                height: 45,
                width: double.infinity,
                child: const Text(
                  "早就准备好了！",
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