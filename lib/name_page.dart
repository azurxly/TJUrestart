import 'package:flutter/material.dart';
import 'chose_game_mode.dart';

class NamePage extends StatefulWidget {
  const NamePage({Key? key}) : super(key: key);

  @override
  State<NamePage> createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {
  TextEditingController nameController = TextEditingController();
  String name ='';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double PhoneWidth = size.width;
    double PhoneHeight = size.height;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image:DecorationImage(
            image: AssetImage("assets/images/page3.jpg"),
            fit: BoxFit.cover
          )
        ),
        padding: EdgeInsets.only(top: PhoneHeight * 0.05142647,left: PhoneWidth * 0.1088688),
        child: Column(
          children: [
            const Spacer(),
            Row(
              children:[
                SizedBox(
                height: PhoneHeight * 0.12856618,
                width: PhoneWidth * 0.6107275624,
                  child: Container(
                    alignment: const Alignment(0,0),
                    child: TextField(
                      controller: nameController,
                      maxLength: 7,
                      onChanged: (value){
                        nameController.text = value.toString();
                        name = nameController.text;
                        print(nameController.text);
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(PhoneWidth * 0.02655337),
                        labelText: '请输入你的名字',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: PhoneHeight * 0.1775437737,
                  width: PhoneWidth * 0.23898035,
                  child: Container(
                    alignment: const Alignment(0,0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) => ChoseGameMode(name: name)),
                              (Route<dynamic> route) => false,
                        );
                      },
                      child: Container(
                        width: PhoneWidth * 0.212426978,
                        height: PhoneHeight * 0.03673319456,
                        alignment: const Alignment(0,0),
                        color: Colors.black,
                        child: const Text(
                          "起好了！",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]
            ),
            const Spacer(),
          ],
        )
      ),
    );
  }
}