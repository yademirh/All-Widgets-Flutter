import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItem = <MenuItems>[
  MenuItems(
    title: "Botones",
    subtitle: "Funciones para eventos",
    link: "/buttons",
    icon: Icons.play_circle_outline,
  ),
  MenuItems(
    title: "Card",
    subtitle: "Estos son estilos de tarjeta",
    link: "/card",
    icon: Icons.add_home,
  ),
  MenuItems(
    title: "Prgress",
    subtitle: "Estos son progress",
    link: "/progress",
    icon: Icons.adb_sharp,
  ),
  MenuItems(
    title: "Snack",
    subtitle: "Estos son snacks",
    link: "/snack",
    icon: Icons.add_location_alt_outlined,
  ),
  MenuItems(
    title: "Control",
    subtitle: "Estos son controles",
    link: "/control",
    icon: Icons.wifi_off,
  ),
  MenuItems(
    title: "Infinity",
    subtitle: "Esto es un scroll infinito",
    link: "/infinity",
    icon: Icons.add_reaction_sharp,
  )
];
