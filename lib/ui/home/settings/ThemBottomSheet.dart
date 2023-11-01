import 'package:flutter/material.dart';

class ThemBottomSheet extends StatefulWidget {
  @override
  State<ThemBottomSheet> createState() => _ThemBottomSheetState();
}

class _ThemBottomSheetState extends State<ThemBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [getSelectedItem('Light'), unSelectedItem('Dark')],
      ),
    );
  }

  Widget getSelectedItem(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Theme.of(context).colorScheme.secondary)),
        Icon(
          Icons.check,
          color: Theme.of(context).colorScheme.secondary,
        )
      ],
    );
  }

  Widget unSelectedItem(String text) {
    return Text(text, style: Theme.of(context).textTheme.titleMedium);
  }
}
