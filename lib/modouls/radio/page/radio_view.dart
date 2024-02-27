import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("إسلامى"),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 80, left: 10, right: 10, bottom: 10),
        child: Column(children: [
          Image.asset("assets/images/radio.png"),
          SizedBox(height: 80,),
          Text(textAlign: TextAlign.center, "إذاعة القرآن الكريم"),
          SizedBox(height: 80,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Image.asset("assets/images/Icon metro-next.png"),
            Image.asset("assets/images/Icon awesome-play.png"),
            Image.asset("assets/images/Icon metro-next (1).png"),
          ],)
        ]),),
    );
  }
}
