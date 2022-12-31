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
  final bool autofocus;
  const DSTextField({
    required this.controller,
    this.autocorrect = false,
    this.onChanged,
    this.onEditingComplete,
    this.label,
    this.hint,
    this.hideValue = false,
    this.errorMessage,
    this.autofocus = false,
    super.key,
  });

  bool get _hasErrorMessage => errorMessage != null;
  bool get _hasLabel => label != null;
  //TODO(Mauricio): Define styles for textfield
  //Color font and so on
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (_hasLabel) ...[
          Padding(
            padding: const EdgeInsets.only(
              left: spacingQuarck,
            ),
            child: Text(label ?? ''),
          ),
          const SizedBox(height: spacingQuarck),
        ],
        TextField(
          controller: controller,
          autocorrect: autocorrect,
          onEditingComplete: onEditingComplete,
          autofocus: autofocus,
          onChanged: onChanged,
          obscureText: hideValue,
          cursorColor: peach,
          decoration: InputDecoration(
            hintText: hint,
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            fillColor: white,
            filled: true,
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
