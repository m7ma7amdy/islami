import 'package:flutter/material.dart';
import 'package:islami/provaider/Settinges_Provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingsProvide = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                settingsProvide.changeLocale('en');
              },
              child: settingsProvide.currentLocale == 'en'
                  ? getSelectedItem('English')
                  : getUnselectedItem('English')),
          InkWell(
              onTap: () {
                settingsProvide.changeLocale('ar');
              },
              child: settingsProvide.currentLocale == 'ar'
                  ? getSelectedItem('العربيه')
                  : getUnselectedItem('العربيه'))
        ],
      ),
    );
  }

  Widget getSelectedItem(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: Theme.of(context).colorScheme.secondary),
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).colorScheme.secondary,
        )
      ],
    );
  }

  Widget getUnselectedItem(String text) {
    return Row(
      children: [
        Text(text, style: Theme.of(context).textTheme.titleMedium),
      ],
    );
  }
}
