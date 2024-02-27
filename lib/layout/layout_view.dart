import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islmay/config/settings_provider.dart';
import 'package:islmay/modouls/hadeth/page/hadeth_view.dart';
import 'package:islmay/modouls/quran/page/quran_view.dart';
import 'package:islmay/modouls/radio/page/radio_view.dart';
import 'package:islmay/modouls/settings/page/settings_view.dart';
import 'package:islmay/modouls/tasbeh/page/tasbeh_view.dart';
import 'package:provider/provider.dart';

class layoutView extends StatefulWidget {
  static const String routeName = "layout";

  layoutView({super.key});

  @override
  State<layoutView> createState() => _layoutViewState();
}

class _layoutViewState extends State<layoutView> {
  List<Widget> screens = [
    RadioView(),
    Sebha(),
    HadethView(),
    QuranView(),
    SettingsView(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingProvider>(context);
    var mediaQuery = MediaQuery.of(context).size;
    var lang = AppLocalizations.of(context)!;
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(vm.getBackground()), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(lang.islami),
        ),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: vm.isDark() ? Color(0xFF141A2E) : Color(0xFFB7935F),
          currentIndex: currentIndex,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio_1x.png")),
                label: lang.radio),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/tasbeh_1x.png")),
                label: lang.tasbeh),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/hadeth_1x.png")),
                label: lang.hadeth),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/quran_1x.png")),
                label: lang.quran),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: lang.settings),
          ],
        ),
      ),
    );
  }
}
