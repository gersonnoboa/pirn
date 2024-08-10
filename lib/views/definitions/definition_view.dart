import 'package:flutter/material.dart';

class DefinitionView extends StatelessWidget {
  final String index;
  final String partOfSpeech;
  final String definition;
  final int indentation;

  const DefinitionView({
    super.key,
    required this.index,
    required this.partOfSpeech,
    required this.definition,
    required this.indentation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Row(
        children: [
          SizedBox(
            width: 16.0 * indentation,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      index,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    if (partOfSpeech.isNotEmpty)
                      Text(
                        partOfSpeech.toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .copyWith(color: Colors.black45),
                      ),
                  ],
                ),
                Text(
                  definition,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
