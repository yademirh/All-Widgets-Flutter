import 'package:flutter/material.dart';

class InfinityScreen extends StatelessWidget {
  const InfinityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Infiniyt"),
      // ),
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

  List<int> imagesId = [10,20,30,40,50];

  final ScrollController scroll = ScrollController();

  void addImagen(){
    final id = imagesId.last;
    imagesId.addAll([1,2,3,4,5].map((e) => id + e));
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    scroll.addListener((){
      if (scroll.position.pixels + 500 >= scroll.position.maxScrollExtent){
        addImagen();
      }
    });
  }

  @override
  void dispose(){
    scroll.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      removeBottom: true,
      child: ListView.builder(
        controller: scroll,
        itemCount: imagesId.length,
        itemBuilder: (context, index) {
          return FadeInImage(
            fit: BoxFit.cover,
            height: 500,
            placeholder: const AssetImage("goku.jpg"),
            image: NetworkImage(
              "https://picsum.photos/id/${imagesId[index]}/200/300"
            )
          );
        },        
      ),
    );
  }
}