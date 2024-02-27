import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islmay/config/application_theme_maneger.dart';
import 'package:islmay/config/settings_provider.dart';
import 'package:islmay/layout/layout_view.dart';
import 'package:islmay/modouls/hadeth/page/hadeth_detalis_view.dart';
import 'package:islmay/modouls/quran/page/quran_details.dart';
import 'package:provider/provider.dart';

import 'modouls/splash/page/splash_view.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingProvider>(context);
    var theme = Theme.of(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ApplicationThemeManeger.lighttheme,
        darkTheme: ApplicationThemeManeger.darktheme,
        themeMode: vm.currentThemeMode,
        locale: Locale(vm.currentLanguage),
        title: "Islami app",
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        initialRoute: SplashView.routeName,
        routes: {
          SplashView.routeName: (context) => const SplashView(),
          layoutView.routeName: (context) => layoutView(),
          Quran_Detalis_View.routeName: (context) => Quran_Detalis_View(),
          HadethDetalisView.routeName: (context) => HadethDetalisView(),
        });
  }
}
