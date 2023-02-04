import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'chose_game_mode.dart';

class NamePage extends StatefulWidget {
  const NamePage({Key? key}) : super(key: key);

  @override
  State<NamePage> createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(
          image: AssetImage("assets/images/page3.jpg"),
          fit: BoxFit.cover

        )
      ),
      padding: EdgeInsets.only(top: 42,left: 41),
      child: Column(
        children: [
          Spacer(),
          Row(
          children:[
            SizedBox(
            height: 105,
            width: 230,
            child: Container(
              alignment: Alignment(0,0),
              child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ChoseGameMode()));
                  },

                child: Text(
                  "请输入你的姓名：\n\n————————",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ]
          ),
          Spacer(),
        ],
      )

    );
  }
}