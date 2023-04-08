import 'package:flutter/material.dart';

class SortSelectorWidget extends StatefulWidget {
  const SortSelectorWidget({super.key});

  @override
  State<SortSelectorWidget> createState() => _SortSelectorState();
}

class _SortSelectorState extends State<SortSelectorWidget> {
  String dropdownValue = 'relevant';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      // Change to PopupMenuButton
      value: dropdownValue,
      elevation: 16,
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['relevant', 'creation day', 'date']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value, style: Theme.of(context).textTheme.bodyText2),
        );
      }).toList(),
    );
  }
}
