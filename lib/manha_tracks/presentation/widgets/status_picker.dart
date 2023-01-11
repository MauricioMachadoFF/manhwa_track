import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manhwa_track/design_sytem.dart/color.dart';
import 'package:manhwa_track/design_sytem.dart/spacing/gaps.dart';
import 'package:manhwa_track/generated/l10n.dart';
import 'package:manhwa_track/manha_tracks/presentation/bloc/selected_status/selected_status_cubit.dart';

class StatusPicker extends StatefulWidget {
  const StatusPicker({super.key});

  @override
  State<StatusPicker> createState() => _StatusPickerState();
}

class _StatusPickerState extends State<StatusPicker> {
  final List<String> _statusOption = [
    S.current.tracking_status_reading,
    S.current.tracking_status_readlist,
    S.current.tracking_status_completed,
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedStatusCubit, SelectedStatusState>(
      bloc: context.read(),
      builder: (context, state) => GestureDetector(
        onTap: () => _showDialog(context),
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: spacingSmall,
            horizontal: spacingNano,
          ),
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(spacingSmall),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(state.status),
              const SizedBox(width: spacingNano),
              const Icon(
                Icons.arrow_drop_down_circle_rounded,
                color: pink,
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (_) => Container(
        color: white,
        height: spacingXXL,
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: CupertinoPicker(
          magnification: 1.2,
          useMagnifier: true,
          squeeze: 1.2,
          itemExtent: spacingXMedium,
          children: List.generate(
            _statusOption.length,
            (index) => Center(
              child: Text(
                _statusOption[index],
              ),
            ),
          ),
          onSelectedItemChanged: (index) {
            final selectedValue = _statusOption[index];
            context.read<SelectedStatusCubit>().changeStatus(selectedValue);
          },
        ),
      ),
    );
  }
}
