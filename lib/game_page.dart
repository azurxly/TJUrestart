import 'package:flutter/material.dart';
import 'package:restart/loading_third.dart';
import 'model/dio.dart';
import 'model/event_data.dart';

//定义各个变量
int cnt = 0;
int knowledge = 0;
int sociality = 0;
int fish = 0;
int emo = 0;
int majorNumber = 0;
String event = " ";
String impact = " ";
String underwords = "进行下一个月";
//判断技能点、专业代号有无初始化过
bool skillinit = false;
//塞入初始内容
List<Widget> eventlist = [
  SizedBox(
    width: 280,
    height: 550,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Text(
          '从水下第一个生命的萌芽开始，到石器时代的巨型野兽，再到人类第一次直立行走，你已经历许多。现在，开启你伟大的探索吧：点击”开始下一个月“，进行大学的第一个月！',
          softWrap: true,
          textAlign: TextAlign.center,
          style: const TextStyle(
            decoration: TextDecoration.none,
            color: Colors.black,
            fontSize: 22,
            height: 3,
          ),
        ),
      ],
    ),
  ),
];

class GamePage extends StatefulWidget {
  final int majorNumber;
  final String name;
  final fish;
  final sociality;
  final emo;
  final knowledge;
  GamePage({
    required this.majorNumber,
    required this.name,
    required this.fish,
    required this.emo,
    required this.knowledge,
    required this.sociality,
    Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  Future<Data> initGetData() async {
    var data = await DioService.getData(widget.majorNumber);
    //
    //获取到数据后刷新页面
    //
    setState(() {

    });
    return data;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double PhoneWidth = size.width;
    double PhoneHeight = size.height;
    String name = widget.name;
    if(!skillinit){
      fish = widget.fish;
      emo = widget.emo;
      sociality = widget.sociality;
      knowledge = widget.knowledge;
      majorNumber = widget.majorNumber;
      skillinit = true;
    }
    return FutureBuilder<Data>(
      future: initGetData(),
      builder: (context, AsyncSnapshot<Data> snapshot) {
        //
        //若还没得到数据
        //
        if (!snapshot.hasData) {
          return CircularProgressIndicator();
        }
        //
        //若得到数据
        //
        var _data = snapshot.data!;
        return Container(
          height: PhoneHeight,
          width: PhoneWidth,
          color: Colors.white,
          padding: const EdgeInsets.fromLTRB(35, 40, 35, 40),
          child: Column(
            children: [
              Container(
                height: PhoneHeight * 0.15,
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      blurRadius: 5, spreadRadius: 0.8, color: Colors.grey)
                ]),
                child: Container(
                  width: double.infinity,
                  height: PhoneHeight / 8.2,
                  padding: const EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 3),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "知识技能：    $knowledge\n社交技能：    $sociality\n摸鱼技能：    $fish\nemo指数:     $emo",
                        style:
                        const TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontSize: 17),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: double.infinity,
                        width: 3,
                        child: Container(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                          width: PhoneWidth * 0.28,
                          height: PhoneHeight * 0.12244398,
                          //
                          //”我的小书包“界面未完成，敬请期待
                          //
                          child: GestureDetector(
                            onTap: () {
                              showDialog(
                                  barrierDismissible: true, //点击空白是否退出
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      // titlePadding: EdgeInsets.all(10),
                                      elevation: 10,
                                      backgroundColor: Colors.white, //背景颜色
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)), //设置形状

                                      title: const Text('敬请期待！'),
                                      // icon: Icon(Icons.work_rounded),
                                      content: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text('在以后的版本中选择此项会进入“背包”界面，里面有随机事件获得的物品，不同物品存在不同的效果！'),
                                      ),
                                      contentTextStyle: const TextStyle(
                                          color: Colors.black), //文本内容的text样式
                                      actions: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.of(context).pop(true);
                                              },
                                              style: ButtonStyle(
                                                  backgroundColor: MaterialStateProperty.resolveWith((states){
                                                    if(states.contains(MaterialState.pressed)){
                                                      return Colors.blueAccent;
                                                    }
                                                    return Colors.black;
                                                  })
                                              ),
                                              child: const Text('确定')),
                                        ),
                                      ],
                                    );
                                  }
                              );
                            },
                            child: Container(
                              alignment: Alignment.center,
                              child: Column(
                                children: const [
                                  Spacer(),
                                  Image(
                                    image: AssetImage("assets/images/backpack.png"),
                                    width: 50,
                                  ),
                                  Text(
                                    "我的小书包",
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                          )
                      )
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      blurRadius: 5, spreadRadius: 0.8, color: Colors.grey)
                ]),
                child: Container(
                  width: double.infinity,
                  height: PhoneHeight * 0.7,
                  padding: const EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 3),
                    color: Colors.white,
                  ),
                  //
                  //事件栏
                  //
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Text(
                          "大一学年",
                          style: const TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontSize: 25,
                            height: 1.8,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                        child: Container(
                          color: Colors.black,
                        ),
                      ),
                      Expanded(
                        child: ListView(
                          children: eventlist,
                          shrinkWrap: true,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          //点击后缓冲0.4秒
                          Future.delayed(const Duration(milliseconds: 500), (){
                            initGetData();
                            if(cnt == 0)//若第一次点击初始化技能点、专业代号
                              skillinit = false;
                            //缓冲0.6秒
                            Future.delayed(const Duration(milliseconds: 300), (){
                              setState(() {

                              });
                              cnt++;
                              if(cnt == 12)
                                underwords = "查看我的大学报告！";
                              //
                              //更新四个技能点以及事件、事件效果
                              //
                              knowledge = (knowledge + _data.effect.knowledge);
                              sociality = (sociality + _data.effect.sociality);
                              fish = (fish + _data.effect.fish);
                              emo = (emo + _data.effect.emo);
                              event = _data.context;
                              impact = _data.effect.text;
                              //
                              //事件列表增加事件
                              //
                              showDialog(
                                  barrierDismissible: true, //点击空白是否退出
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      // titlePadding: EdgeInsets.all(10),
                                      elevation: 10,
                                      backgroundColor: Colors.white, //背景颜色
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)), //设置形状

                                      title: Text('第$cnt个月'),
                                      // icon: Icon(Icons.work_rounded),
                                      content: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text('$event\n$impact'),
                                      ),
                                      contentTextStyle: const TextStyle(
                                          color: Colors.black), //文本内容的text样式
                                      actions: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.of(context).pop(true);
                                              },
                                              style: ButtonStyle(
                                                  backgroundColor: MaterialStateProperty.resolveWith((states){
                                                    if(states.contains(MaterialState.pressed)){
                                                      return Colors.blueAccent;
                                                    }
                                                    return Colors.black;
                                                  })
                                              ),
                                              child: const Text('确定')),
                                        ),
                                      ],
                                    );
                                  }
                              );
                              eventlist.add(
                                SizedBox(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:[
                                      Text(
                                        '第$cnt个月——————————————————\n$event\n$impact\n\n',
                                        softWrap: true,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          decoration: TextDecoration.none,
                                          color: Colors.black,
                                          fontSize: 18,
                                          height: 1.8,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                          });
                          //
                          //周期结束后跳转到下一界面
                          //
                          if(cnt > 11) {
                            Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (BuildContext context) {
                                return LoadPageThird
                                  (name: name,majorNumber: majorNumber, fish: fish, knowledge: knowledge, emo: emo, sociality: sociality,);
                              },),);
                            //
                            //初始化
                            //
                            cnt = 0;
                            underwords = "进行下一个月";
                            eventlist.clear();
                            eventlist.add(
                              SizedBox(
                                width: 280,
                                height: 550,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:[
                                    Text(
                                      '从水下第一个生命的萌芽开始，到石器时代的巨型野兽，再到人类第一次直立行走，你已经历许多。现在，开启你伟大的探索吧：点击”开始下一个月“，进行大学的第一个月！',
                                      softWrap: true,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        decoration: TextDecoration.none,
                                        color: Colors.black,
                                        fontSize: 22,
                                        height: 3,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                          setState(() {

                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.black,
                          height: 45,
                          width: double.infinity,
                          child: Text(
                            "$underwords",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}