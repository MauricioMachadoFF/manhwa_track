import 'package:flutter/material.dart';

class StatusDropdown extends StatefulWidget {
  const StatusDropdown({super.key});

  @override
  State<StatusDropdown> createState() => StatusDropdownState();
}

const List<String> statusOption = ['WatchList', 'Watching', 'Completed'];

String _dropdownValue = statusOption.first;

class StatusDropdownState extends State<StatusDropdown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: _dropdownValue,
      onChanged: (value) {
        final selectedValue = value;
        if (selectedValue != null) {
          setState(() {
            _dropdownValue = selectedValue;
          });
        }
      },
      items: statusOption
          .map((status) => DropdownMenuItem(
                value: status,
                child: Text(status),
              ))
          .toList(),
    );
  }
}
