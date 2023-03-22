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
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image:DecorationImage(
            image: AssetImage("assets/images/page3.jpg"),
            fit: BoxFit.cover
          )
        ),
        padding: const EdgeInsets.only(top: 42,left: 41),
        child: Column(
          children: [
            const Spacer(),
            Row(
              children:[
                SizedBox(
                height: 105,
                width: 230,
                  child: Container(
                    alignment: const Alignment(0,0),
                    child: TextField(
                      controller: nameController,
                      onChanged: (value){
                        nameController.text = value.toString();
                        name = nameController.text;
                        print(nameController.text);
                      },
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        labelText: '请输入你的名字',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 145,
                  width: 90,
                  child: Container(
                    alignment: const Alignment(0,0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChoseGameMode(name: name)));
                      },
                      child: Container(
                        width: 80,
                        height: 30,
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