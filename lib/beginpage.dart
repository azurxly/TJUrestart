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
    final size = MediaQuery.of(context).size;
    double PhoneWidth = size.width;
    double PhoneHeight = size.height;
    return Container(
      color: Colors.black,
      padding: EdgeInsets.fromLTRB(PhoneWidth * 0.1, PhoneHeight * 0.061222, PhoneWidth * 0.1, PhoneHeight * 0.061222),
      child: Column(
        children: [
          SizedBox(
            height: PhoneHeight * 0.061222,
          ),

          SizedBox(
            height: PhoneHeight * 0.15737465,
            child:Container(
              alignment: const Alignment(-1,-1),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Restart your college life",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  ),
                  Text("大学重开"
                    '\n'
                    "模拟器",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      decoration: TextDecoration.none,
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
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NamePage()));
            },
            child: Container(
              height: PhoneHeight * 0.05509979,
              width: PhoneWidth * 0.7966,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white,width: 3),
              ),
              alignment: const Alignment(0,0),
              child:
              const Text(
                "立即重开",
                style: TextStyle(
                    decoration: TextDecoration.none,
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