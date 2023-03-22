import 'package:flutter/material.dart';
import 'package:restart/school_chose.dart';
import '../game_start.dart';

class LoadPage extends StatefulWidget {
  final int majorNumber;

  const LoadPage({required this.majorNumber, Key? key}) : super(key: key);

  @override
  State<LoadPage> createState() => _LoadPageState();
}

class _LoadPageState extends State<LoadPage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(50, 450, 50, 50),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/load.jpg"),
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
                color: Colors.white,
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
              border: Border.all(color: Colors.white,width: 3)
            ),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const GameStart(majorNumber: 6, name: 'null',)));
              },
              child: Text(
                "这里有动画",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10
                ),
              ),
            ),
          ),
          Spacer(),
          Container(
            width: double.infinity,
            height: 100,
            child: Text("这里是事件"
                "",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),),
          )
        ],
      )
    );
  }
}