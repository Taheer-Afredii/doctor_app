import 'package:flutter/material.dart';

class CheckBoxWidget extends StatelessWidget {
  bool value;
  void Function(bool?) onChanged;
  CheckBoxWidget({
    required this.value,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: value,
      onChanged: onChanged,
      side: const BorderSide(
        color: Color(0xff46BBFF),
      ),
      activeColor: const Color(0xff46BBFF),
    );
  }
}
