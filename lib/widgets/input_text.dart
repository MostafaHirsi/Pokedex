import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputText extends StatefulWidget {
  final String? hintText;
  final TextEditingController? controller;
  final IconData? prefixIcon;
  final Function(String submittedValue) onSubmitted;
  const InputText({
    super.key,
    this.controller,
    this.hintText,
    required this.onSubmitted,
    this.prefixIcon,
  });

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  late FocusNode _focusNode;
  final ValueNotifier<bool> _focusNotifier = ValueNotifier<bool>(false);

  _InputTextState();

  @override
  void initState() {
    super.initState();

    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    _focusNotifier.dispose();

    super.dispose();
  }

  void _onFocusChange() {
    _focusNotifier.value = _focusNode.hasFocus;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _focusNotifier,
      builder: (_, isFocus, child) {
        return TextField(
          controller: widget.controller,
          onSubmitted: widget.onSubmitted,
          focusNode: _focusNode,
          decoration: InputDecoration(
            prefixIcon: widget.prefixIcon != null
                ? Icon(
                    widget.prefixIcon,
                    color: isFocus ? Colors.black : Colors.grey.shade400,
                  )
                : null,
            hintText: widget.hintText,
          ),
        );
      },
    );
  }
}
