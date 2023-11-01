import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/ui/MyThemData.dart';
import 'package:islami/ui/home/hadeth/HadethTap.dart';
import 'package:islami/ui/home/quran/Quran_Tap.dart';
import 'package:islami/ui/home/radio/RadioTap.dart';
import 'package:islami/ui/home/settings/Settings_tap.dart';
import 'package:islami/ui/home/tasbeh/Tasbeh_Tap.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTapIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyThemData.isDarkEnabled
                  ? 'assets/images/main_background_dark.png'
                  : 'assets/images/main_background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.app_name),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedTapIndex = index;
            });
          },
          currentIndex: selectedTapIndex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/quran_icon.png')),
                label: AppLocalizations.of(context)!.quran),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/hadeth.png')),
                label: AppLocalizations.of(context)!.hadeth),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: AppLocalizations.of(context)!.tasbeh),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: AppLocalizations.of(context)!.radio),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(Icons.settings),
                label: 'Settings'),
          ],
        ),
        body: taps[selectedTapIndex],
      ),
    );
  }

  List<Widget> taps = [
    QuranTap(),
    HadethTap(),
    RadioTap(),
    TasbehTap(),
    SettingsTap()
  ];
}
