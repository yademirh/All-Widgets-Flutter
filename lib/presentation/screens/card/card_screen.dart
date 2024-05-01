import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>> [
  {"elevation": 0.0, "label": "elevación 0.0"},
  {"elevation": 1.0, "label": "elevación 1.0"},
  {"elevation": 2.0, "label": "elevación 2.0"},
  {"elevation": 3.0, "label": "elevación 3.0"},
  {"elevation": 4.0, "label": "elevación 4.0"},
  {"elevation": 5.0, "label": "elevación 5.0"},
];

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Card"),
        ),
        body: const _Card());
  }
}

class _Card extends StatelessWidget {
  const _Card();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map((e) => Card(
            elevation: e["elevation"],
            child: Column(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(e["label"]),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
