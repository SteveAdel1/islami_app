import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islmay/modouls/hadeth/page/hadeth_detalis_view.dart';

class HadethView extends StatefulWidget {
  HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethData> allHadethContnet = [];

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    if (allHadethContnet.isEmpty) loudData();
    return Scaffold(
        body: Column(
      children: [
        Image.asset(
          "assets/images/hadeth_header.png",
          height: mediaQuery.height * 0.2,
        ),
        Divider(
          color: theme.primaryColor,
          thickness: 1,
        ),
        Text(
          "الاحاديث",
          style: TextStyle(
              fontSize: 25,
              fontFamily: "El Messiri",
              fontWeight: FontWeight.w600),
        ),
        Divider(
          color: theme.primaryColor,
          thickness: 1,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, HadethDetalisView.routeName,
                    arguments: allHadethContnet[index]);
              },
              child: Text(
                allHadethContnet[index].title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "El Messiri",
                    fontSize: 23,
                    fontWeight: FontWeight.w500),
              ),
            ),
            itemCount: allHadethContnet.length,
          ),
        )
      ],
    ));
  }

  Future<void> loudData() async {
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadethList = content.split("#");
    for (int i = 0; i < allHadethList.length; i++) {
      String singleHadeth = allHadethList[i].trim();
      int titleIndex = singleHadeth.indexOf("\n");

      String title = singleHadeth.substring(0, titleIndex);
      String content = singleHadeth.substring(titleIndex + 1);
      HadethData hadethData = HadethData(title, content);
      allHadethContnet.add(hadethData);

      setState(() {});
    }
  }
}

class HadethData {
  final String title;
  final String content;

  HadethData(this.title, this.content);
}
