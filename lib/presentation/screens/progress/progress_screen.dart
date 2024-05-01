import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hola"),
        ),
        body: const Center(
            child: Column(
          children: [
            SizedBox(height: 20,),
            Text("Circular progress"),
            CircularProgressIndicator(
              strokeWidth: 2,
              backgroundColor: Colors.blueGrey,
            ),
            SizedBox(height: 20,),
            Text("Linear Progress"),
            LinearProgressIndicator(backgroundColor: Colors.green,),
            _ControllProgress()
          ],
        )));
  }
}

class _ControllProgress extends StatefulWidget {
  const _ControllProgress();
  
  @override
  State<_ControllProgress> createState() => _ControllProgressState();
}

class _ControllProgressState extends State<_ControllProgress> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(microseconds: 500), (value){
        return (value*2)/100;
      }).takeWhile((element) => element<100),
      builder: (context, snapshot) {
        final progress = snapshot.data ?? 0;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [ 
              const SizedBox(height: 20,),
              Expanded(child: LinearProgressIndicator(value: progress,))
            ],
          ),
          );
      },
    );
  }
}
