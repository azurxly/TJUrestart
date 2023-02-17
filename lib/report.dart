
import 'package:flutter/material.dart';
import 'package:restart/name_page.dart';

import 'package:flutter/material.dart';
class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    int count=0;
    return GestureDetector(
      onTap: _incrementCounter,
      child: Container(
        color: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 200,
              left: 35,
              width: 250,
              height: 150,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/弹出框.png"),
                  )
                ),
                child: Text(
                  "姓名\n这是你的大学总结:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,

                  ),
                ),
              ),
            ),
            Visibility(
              visible: _counter>=1,
                child:Positioned(
                  top: 350,
                  left: 180,
                  width: 250,
                  height: 150,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/弹出框.png"),
                        )
                    ),
                    child: Text(
                      "姓名\n这是你的大学总结:",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,

                      ),
                    ),
                  ),
                )
            ),
            Visibility(
                visible: _counter>=2,
                child:Positioned(
                  top: 280,
                  left: 100,
                  width: 250,
                  height: 150,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/弹出框.png"),
                        )
                    ),
                    child: Text(
                      "姓名\n这是你的大学总结:",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,

                      ),
                    ),
                  ),
                )
            ),
            Visibility(
                visible: _counter>=3,
                child:Positioned(
                  top: 320,
                  left: 80,
                  width: 250,
                  height: 150,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/弹出框.png"),
                        )
                    ),
                    child: Text(
                      "姓名\n这是你的大学总结:",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,

                      ),
                    ),
                  ),
                )
            ),
            Visibility(
                visible: _counter>=4,
                child:Positioned(
                  top: 500,

                  child: Column(
                    children: [
                      Container(
                        width:250 ,
                        height:52,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 220, 218, 219),
                          border: Border.all(color: Colors.black,width: 3)
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NamePage()));
                          },
                          child: Text(
                            "再次重开",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24
                            ),
                          ),
                        )
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          width:250 ,
                          height:52,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 220, 218, 219),
                              border: Border.all(color: Colors.black,width: 3)
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NamePage()));
                            },
                            child: Text(
                              "一键退学",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24
                              ),
                            ),
                          )
                      )
                    ],
                  ),
                )
            )
          ],
        )
      ),
    );
  }
}