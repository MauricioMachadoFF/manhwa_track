import 'package:flutter/material.dart';
import 'package:manhwa_track/design_sytem.dart/design_system.dart';

class DSTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool autocorrect;
  final void Function(String)? onChanged;
  final void Function()? onEditingComplete;
  final String? label;
  final String? hint;
  final bool hideValue;
  final String? errorMessage;
  const DSTextField({
    required this.controller,
    this.autocorrect = false,
    this.onChanged,
    this.onEditingComplete,
    this.label,
    this.hint,
    this.hideValue = false,
    this.errorMessage,
    super.key,
  });

  bool get _hasErrorMessage => errorMessage != null;

  //TODO(Mauricio): Define styles for textfield
  //Color font and so on
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: controller,
          autocorrect: autocorrect,
          onEditingComplete: onEditingComplete,
          onChanged: onChanged,
          obscureText: hideValue,
          decoration: InputDecoration(
            labelText: label,
            hintText: hint,
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.purple,
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),
          ),
        ),
        if (_hasErrorMessage) ...[
          const SizedBox(height: spacingQuarck),
          Padding(
            padding: const EdgeInsets.only(left: spacingQuarck),
            child: Text(
              errorMessage ?? '',
              style: const TextStyle(
                color: Colors.red,
              ),
            ),
          ),
        ],
      ],
    );
  }
}
