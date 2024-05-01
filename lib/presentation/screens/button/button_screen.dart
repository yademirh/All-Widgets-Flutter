import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Button"),
        ),
        body: const _Button());
  }
}

class _Button extends StatelessWidget {
  const _Button();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Wrap(
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text("Elevated Button")),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm),
              label: const Text("Elevated Button Icon"),
            ),
            FilledButton(onPressed: () {}, child: const Text("Relleno")),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add_circle_sharp),
              label: const Text("Relleno Icon"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text("Outline"),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add_chart_outlined),
              label: const Text("Outline"),
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.woman_2_rounded))
          ],
        ),
      ),
    );
  }
}
