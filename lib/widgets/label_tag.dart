import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex/utils/padding.dart';
import 'package:pokedex/utils/string.dart';

class LabelTag extends StatelessWidget {
  final String label;
  final Color color;
  const LabelTag({
    super.key,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: UIPadding.xxs),
      padding: EdgeInsets.symmetric(vertical: UIPadding.xs),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(24),
        ),
      ),
      child: Text(
        label.capitalize(),
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
            color: Colors.white, fontWeight: FontWeight.w600, letterSpacing: 0),
      ),
    );
  }
}
