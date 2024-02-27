import 'package:flutter/material.dart';

class Sebha extends StatefulWidget {
  Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  double angle = 5;
  int counter = 0;

  // bool _isRotated = false;
  List<String> texts = ["الحمدلله", "سبحان الله", "الله اكبر"];

  int curText = 0;

  //String? index;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 70, top: 25),
                  child: const Image(
                      image: AssetImage("assets/images/headofseb7a.png"))),
              Container(
                  margin: const EdgeInsets.only(top: 105, bottom: 40),
                  child: GestureDetector(
                    onTap: () {
                      onClick();
                    },
                    child: Transform.rotate(
                        angle: angle,
                        child: Image(
                          image: AssetImage("assets/images/bodyofseb7a.png"),
                        )),
                  ))
            ],
          ),
          const Text(
            "عدد التسبيحات",
            style: TextStyle(
                fontSize: 25,
                fontFamily: "El Messiri",
                fontWeight: FontWeight.w600),
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Color(0xFFB7935F),
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              '$counter',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Color(0xFFB7935F),
                borderRadius: BorderRadius.circular(40)),
            child: Text(
              "${texts[curText]}",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  onClick() {
    //rotate image
    angle += 5;

    //change text after 33
    if (counter == 33) {
      curText++;
    }
    curText = curText % texts.length;

    //update counter
    counter = counter >= 33 ? 0 : ++counter;

    setState(() {});
  }
}
