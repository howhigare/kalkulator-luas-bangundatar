import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Segitiga extends StatelessWidget {
  final FocusNode focus;
  final TextEditingController ctl;
  final String hint;

  const Segitiga({
    Key? key,
    required this.focus,
    required this.ctl,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      focusNode: focus,
      controller: ctl,
      onTapOutside: (event) => focus.unfocus(),
      textAlignVertical: TextAlignVertical.top,
      keyboardType: TextInputType.number,
      cursorColor: Colors.white,
      style: const TextStyle(
        fontSize: 16,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        hintText: hint,
        hintStyle: TextStyle(color: Color.fromARGB(150, 0, 0, 0)),
        border: InputBorder.none,
      ),
    );
  }
}
