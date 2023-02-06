import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex/utils/padding.dart';

class InputText extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final IconData? prefixIcon;
  final bool isLoading;
  final Function(String submittedValue) onSubmitted;
  final Function(String submittedValue)? onChanged;
  final FocusNode? focusNode;

  InputText({
    super.key,
    this.controller,
    this.hintText,
    required this.onSubmitted,
    this.prefixIcon,
    this.onChanged,
    this.isLoading = false,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onSubmitted: onSubmitted,
      onChanged: onChanged,
      focusNode: focusNode,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(
          right: 20,
        ),
        suffixIcon: isLoading ? CircularProgressIndicator() : null,
        suffixIconConstraints: BoxConstraints(maxHeight: 22, maxWidth: 22),
        prefixIcon: prefixIcon != null
            ? Icon(
                prefixIcon,
                color: Colors.black,
              )
            : null,
        hintText: hintText,
      ),
    );
  }
}
