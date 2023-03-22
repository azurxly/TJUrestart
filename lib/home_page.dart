import 'package:flutter/material.dart';
import 'package:restart/beginpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BeginPage()));
      },
      child:Container(
        color: Colors.black,
        padding: const EdgeInsets.fromLTRB(35, 50, 35, 50),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),

            const SizedBox(
              height: 129,

              child: Text(
                "如果再来一次……             "
                    '\n'
                    "如果……                ",

                textAlign:TextAlign.left ,
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color:Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold

                ),
              ),
            ),

            Image.asset("assets/images/page1.jpg",
              fit: BoxFit.cover,

            ),
            const Spacer(),
            const Text(
              "点击空白处继续",


              style: TextStyle(
                  decoration: TextDecoration.none,
                  color:Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.bold

              ),
            ),
          ],

        ),
      ),
    );
  }
}