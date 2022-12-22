import 'package:flutter/cupertino.dart';

import '../styles.dart';

class InfoLine extends StatelessWidget {
  final String label;
  final Object value;
  const InfoLine({required this.label, required this.value, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: labelText,
        ),
        Text(
          value.toString(),
          style: valueText,
        ),
        Text(''), //a filler
      ],
    );
  }
}
