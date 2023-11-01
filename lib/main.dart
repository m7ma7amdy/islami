import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/ui/MyThemData.dart';
import 'package:islami/ui/chapterDetails/ChapterDetailsScreen.dart';
import 'package:islami/ui/hadethDetails/HadethDetailsScreen.dart';
import 'package:islami/ui/home/HomeScreen.dart';
import 'package:islami/ui/home/SplashScreen/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyThemData.lightTheme,
      darkTheme: MyThemData.darkTheme,
      themeMode: ThemeMode.light,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        ChapterDetailsScreen.routeName: (_) => ChapterDetailsScreen(),
        HadethDetailsScreen.routeName: (_) => HadethDetailsScreen()
      },
      initialRoute: SplashScreen.routeName,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      locale: Locale('ar'),
    );
  }
}
