import 'package:flutter/material.dart';

class CasePairView extends StatelessWidget {
  final String type;
  final String singular;
  final String plural;

  const CasePairView({
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
          Text(
            type,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                "Ainsus".toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .copyWith(color: Colors.black45),
              ),
              const SizedBox(width: 8.0),
              Text(
                singular,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                "Mitmus".toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .copyWith(color: Colors.black45),
              ),
              const SizedBox(width: 8.0),
              Text(
                plural,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
