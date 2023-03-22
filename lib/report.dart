import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restart/home_page.dart';

class Report extends StatefulWidget {
  final int majorNumber;
  final int emo;
  final int fish;
  final int sociality;
  final int knowledge;
  final String name;
  const Report({
    required this.majorNumber,
    required this.emo,
    required this.fish,
    required this.sociality,
    required this.knowledge,
    required this.name,
    Key? key}) : super(key: key);

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
    int majorNumber = widget.majorNumber;
    int emo = widget.emo;
    int fish = widget.fish;
    int sociality = widget.sociality;
    int knowledge = widget.knowledge;
    String major = ' ';
    String name = widget.name;
    switch (majorNumber){
      case 1:
        major = '机械工程学院';
        break;
      case 2:
        major = '精密仪器与光电子工程学院';
        break;
      case 3:
        major = '电气自动化与信息工程学院';
        break;
      case 4:
        major = '微电子学院';
        break;
      case 5:
        major = '建筑学院';
        break;
      case 6:
        major = '化工学院';
        break;
      case 7:
        major = '材料科学与工程学院';
        break;
      case 8:
        major = '管理与经济学部';
        break;
      case 9:
        major = '理学院';
        break;
      case 10:
        major = '外国语言与文学学院';
        break;
      case 11:
        major = '教育学院';
        break;
      case 12:
        major = '环境科学与工程学院';
        break;
      case 13:
        major = '智能与计算学部';
        break;
      case 14:
        major = '生命科学学院';
        break;
      case 15:
        major = '海洋科学与技术学院';
        break;
      case 16:
        major = '法学院';
        break;
      case 17:
        major = '数学学院';
        break;
      case 18:
        major = '医学部';
        break;
      case 19:
        major = '马克思主义学院';
        break;
      case 20:
        major = '地球系统科学学院';
    }
    String title1 = '活得好好的';
    String title2 = '未被退学';
    int count = 0;
    if(fish >= 10) {
      if(count == 0) {
        title1 = '摸鱼达人';
        count ++;
      }
      else if(count == 1){
        title2 = '摸鱼达人';
        count++;
      }
    }
    if(emo >= 10) {
      if(count == 0) {
        title1 = '网抑云选手';
        count ++;
      }
      else if(count == 1){
        title2 = '网抑云选手';
        count++;
      }
    }
    if(sociality >= 10) {
      if(count == 0) {
        title1 = '社交小能手';
        count ++;
      }
      else if(count == 1){
        title2 = '社交小能手';
        count++;
      }
    }
    if(knowledge >= 10) {
      if(count == 0) {
        title1 = '绩点4.0';
        count ++;
      }
      else if(count == 1){
        title2 = '绩点4.0';
        count++;
      }
    }
    return GestureDetector(
      onTap: _incrementCounter,
      child: Container(
        color: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 180,
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
                  "$name\n你选择了”$major“作为你的专业，\n让我们看看你在大学四年间收获如何！",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 16,

                  ),
                ),
              ),
            ),
            Visibility(
              visible: _counter>=1,
                child:Positioned(
                  top: 400,
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
                      "$name\n大学四年间，你收获良多，\n你的知识点数为：$knowledge，\n你的社交点数为：$sociality，\n你的摸鱼点数为：$fish，\n你的emo点数为：$emo",
                      style: TextStyle(
                        decoration: TextDecoration.none,
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
                      "$name\n根据你的各点数，你得到了：\n”$title1“称号与\n”$title2“称号！",
                      style: TextStyle(
                        decoration: TextDecoration.none,
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
                  top: 600,
                  child: Column(
                    children: [
                      Container(
                        width:250 ,
                        height:52,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.black,width: 3)
                        ),
                        child: GestureDetector(
                          onTap: () {
                           Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage()));
                          },
                          child: Text(
                            "再次重开",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                              color: Colors.white,
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
                              color: Colors.black,
                              border: Border.all(color: Colors.black,width: 3)
                          ),
                          child: GestureDetector(
                            onTap: () {
                              SystemNavigator.pop();
                            },
                            child: Text(
                              "一键退学",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.white,
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