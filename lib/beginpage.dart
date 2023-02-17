import 'package:flutter/material.dart';
import 'package:restart/name_page.dart';

class BeginPage extends StatefulWidget {
  const BeginPage({Key? key}) : super(key: key);

  @override
  State<BeginPage> createState() => _BeginPageState();
}
class _BeginPageState extends State<BeginPage>{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.fromLTRB(35, 50, 35, 50),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),

          SizedBox(
            height: 129,
            child:Container(
              alignment: Alignment(-1,-1),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Restart your college life",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,

                  ),
                  ),
                  Text("大学重开"
                    '\n'
                    "模拟器",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),

          Image.asset("assets/images/page1.jpg",
            fit: BoxFit.cover,

          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NamePage()));
            },
            child: Container(
              height: 45,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white,width: 3),
              ),
              alignment: Alignment(0,0),
              child:
              Text(
                "立即重开",


                style: TextStyle(
                    color:Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold

                ),
              ),
            ),
          )
        ],

      ),
    );
  }
}