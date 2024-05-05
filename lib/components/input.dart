import 'package:flutter/material.dart';
import '../consts/spacing_const.dart';



class Input extends StatefulWidget {
  final String label;
  final bool obscureText;

  const Input({
    required this.label,
    this.obscureText = false,
    super.key, required InputDecoration decoration, required int width,
  });

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: SpacingConst.baseSpacing),
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: widget.label,
        ),
        obscureText: widget.obscureText,
      ),
    );
  }
}
