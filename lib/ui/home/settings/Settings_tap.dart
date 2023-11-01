import 'package:flutter/material.dart';
import 'package:islami/ui/home/settings/LanguageBottomSheet.dart';
import 'package:islami/ui/home/settings/ThemBottomSheet.dart';

class SettingsTap extends StatefulWidget {
  @override
  State<SettingsTap> createState() => _SettingsTapState();
}

class _SettingsTapState extends State<SettingsTap> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 64, horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Them'),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(
                        color: Theme.of(context).dividerColor, width: 1)),
                child: Text(
                  'Light',
                  style: Theme.of(context).textTheme.titleMedium,
                )),
          ),
          SizedBox(
            height: 18,
          ),
          Text('Language'),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(
                        color: Theme.of(context).dividerColor, width: 1)),
                child: Text(
                  'English',
                  style: Theme.of(context).textTheme.titleMedium,
                )),
          )
        ],
      ),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ThemBottomSheet();
      },
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return LanguageBottomSheet();
      },
    );
  }
}
