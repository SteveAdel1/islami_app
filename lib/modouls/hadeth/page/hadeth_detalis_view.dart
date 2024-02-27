import 'package:flutter/material.dart';
import 'package:islmay/config/settings_provider.dart';
import 'package:islmay/modouls/hadeth/page/hadeth_view.dart';
import 'package:provider/provider.dart';

class HadethDetalisView extends StatelessWidget {
  HadethDetalisView({super.key});

  static const String routeName = "hadethDetalisView";

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    var args = ModalRoute.of(context)?.settings.arguments as HadethData;
    var vm = Provider.of<SettingProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(vm.getBackground()), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("إسلامى"),
        ),
        body: Container(
          width: mediaQuery.width,
          height: mediaQuery.height,
          margin: EdgeInsets.only(right: 20, left: 20, top: 15, bottom: 80),
          padding: EdgeInsets.only(right: 20, left: 20, top: 15, bottom: 15),
          decoration: BoxDecoration(
              color: vm.isDark()
                  ? Color(0xFF141A2E).withOpacity(0.8)
                  : Color(0XFFF8F8F8).withOpacity(0.8),
              borderRadius: BorderRadius.circular(25)),
          child: Column(children: [
            Text(
              "${args.title}",
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: "El Messiri",
                  fontWeight: FontWeight.w600),
            ),
            Divider(
              thickness: 1,
              color: theme.primaryColor,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Text(
                    "${args.content}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22,
                        color: vm.isDark() ? Color(0xFFFACC1D) : Colors.black87,
                        fontFamily: "El Messiri",
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
