import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackScreen extends StatelessWidget {
  const SnackScreen({super.key});

  void showSnack(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: const Text("Notificaciones"),
          action: SnackBarAction(
            label: "Ok",
            onPressed: () {},
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snack"),
      ),
      body: const _Dialog(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showSnack(context);
        },
        label: const Text("Visualizar"),
        icon: const Icon(Icons.search),
      ),
    );
  }
}

class _Dialog extends StatelessWidget {
  const _Dialog();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          FilledButton(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text("Esto es un dialogo")
                  ]
                );
              },
              child: const Text("Dialog")
            ),
            FilledButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Titulo del Dialogo"),
                      content: const Text("Este es el contenido"),
                      actions: [
                        TextButton(
                          onPressed: (){
                            context.pop();
                          },
                          child: const Text("Aceptar")
                        ),
                        TextButton(
                          onPressed: (){
                            context.pop();
                          },
                          child: const Text("Cancelar")
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text("Dialog")
            ),
        ],
      ),
    );
  }
}
