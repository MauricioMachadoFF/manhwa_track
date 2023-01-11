import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manhwa_track/generated/l10n.dart';
import 'package:manhwa_track/manha_tracks/presentation/bloc/selected_status/selected_status_cubit.dart';

class StatusDropdown extends StatefulWidget {
  const StatusDropdown({
    super.key,
    required this.status,
  });

  final String status;

  @override
  State<StatusDropdown> createState() => StatusDropdownState();
}

final List<String> statusOption = [
  S.current.tracking_status_reading,
  S.current.tracking_status_readlist,
  S.current.tracking_status_completed,
];

class StatusDropdownState extends State<StatusDropdown> {
  late String _dropdownValue;

  @override
  void initState() {
    _dropdownValue = statusOption.firstWhereOrNull(
          (element) => element == widget.status,
        ) ??
        S.current.tracking_status_unknown;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: _dropdownValue,
      onChanged: (value) {
        final selectedValue = value;
        if (selectedValue != null) {
          context.read<SelectedStatusCubit>().changeStatus(selectedValue);
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
