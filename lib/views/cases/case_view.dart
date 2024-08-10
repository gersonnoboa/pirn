import 'package:flutter/material.dart';

class CaseView extends StatelessWidget {
  final String type;
  final String singular;
  final String plural;

  const CaseView({
    super.key,
    required this.type,
    required this.singular,
    required this.plural,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(type),
          Text(singular),
        ],
      ),
    );
  }
}
