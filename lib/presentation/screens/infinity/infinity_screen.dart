import 'package:flutter/material.dart';

class InfinityScreen extends StatelessWidget {
  const InfinityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Infiniyt"),
      ),
      body: const _InfinityView(),
    );
  }
}

class _InfinityView extends StatefulWidget {
  const _InfinityView();

  @override
  State<_InfinityView> createState() => _InfinityViewState();
}

class _InfinityViewState extends State<_InfinityView> {

  final ScrollController scroll = ScrollController();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}