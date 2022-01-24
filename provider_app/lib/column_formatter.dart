import 'package:flutter/material.dart';


class ColumnFormatter extends StatelessWidget {
  const ColumnFormatter({
    Key? key,
    required this.text,
    required this.value,
  }) : super(key: key);

  final String value;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        )
      ],
    );
  }
}