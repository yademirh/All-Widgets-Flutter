import 'package:flutter/material.dart';

class ControlScreen extends StatelessWidget {
  const ControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: _ControlView());
  }
}

class _ControlView extends StatefulWidget {
  const _ControlView();

  @override
  State<_ControlView> createState() => _ControlViewState();
}

enum Transporte { carro, avion, barco, moto, tren }

class _ControlViewState extends State<_ControlView> {
  Transporte seleccionado = Transporte.carro;

  bool gaseosa = false;
  bool empanada = false;
  bool salsa = false;
  bool picante = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ExpansionTile(
          title: const Text("Menu de metodos de transporte"),
          children: [
            RadioListTile(
              title: const Text("Carrito"),
              value: Transporte.carro,
              groupValue: seleccionado,
              onChanged: (value) {
                seleccionado = Transporte.carro;
                setState(() {});
              },
            ),
            RadioListTile(
              title: const Text("Avioncito"),
              value: Transporte.avion,
              groupValue: seleccionado,
              onChanged: (value) {
                seleccionado = Transporte.avion;
                setState(() {});
              },
            ),
            RadioListTile(
              title: const Text("Barquito"),
              value: Transporte.barco,
              groupValue: seleccionado,
              onChanged: (value) {
                seleccionado = Transporte.barco;
                setState(() {});
              },
            ),
            RadioListTile(
              title: const Text("Trencito"),
              value: Transporte.tren,
              groupValue: seleccionado,
              onChanged: (value) {
                seleccionado = Transporte.tren;
                setState(() {});
              },
            ),
          ]
        ),
        ExpansionTile(
          title: const Text("Menu de comida"),
          children: [
            CheckboxListTile(
              title: const Text("Gasebosa"),
              value: gaseosa,
              onChanged: (value){
                setState(() { gaseosa = !gaseosa; });
              },
            ),
            CheckboxListTile(
              title: const Text("Empanadita"),
              value: empanada,
              onChanged: (value){
                setState(() { empanada = !empanada; });
              },
            ),
            CheckboxListTile(
              title: const Text("Salsita"),
              value: salsa,
              onChanged: (value){
                setState(() { salsa = !salsa; });
              },
            ),
            CheckboxListTile(
              title: const Text("Picantico"),
              value: picante,
              onChanged: (value){
                setState(() { picante = !picante; });
              },
            ),
          ],
        )
      ],
    );
  }
}
