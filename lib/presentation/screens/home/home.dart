import 'package:widget_all/config/menu/menu_items.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: ListView.builder(
          itemCount: appMenuItem.length,
          itemBuilder: (context, index) {
            final menuItem = appMenuItem[index];
            return _Lista(menuItem: menuItem);
          },
        ));
  }
}

class _Lista extends StatelessWidget {
  final MenuItems menuItem;
  const _Lista({super.key, required this.menuItem});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(
          //para mostrar al inicio
          menuItem.icon,
          color: Colors.blue,
        ),
        trailing: const Icon(
          // para mostrar al final
          Icons.arrow_forward_ios,
          color: Colors.green,
        ),
        title: Text(menuItem.title),
        subtitle: Text(menuItem.subtitle),
        onTap: () {
          /*Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const ButtonScreen()));*/

            context.push(menuItem.link);
        });
  }
}
