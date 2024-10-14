

import 'package:flutter/material.dart';

class MenuItem{

  final String title;
  final String description;
  final IconData icon;
  final String link;

  MenuItem({
    required this.title,
    required this.description,
    required this.icon,
    required this.link,
  });
}

final List<MenuItem> menu = [
  MenuItem(title: "Buttons", 
           description: 'Different types of buttons', 
           icon: Icons.account_balance, 
           link: '/buttons'),
    MenuItem(title: "UI Controls", 
           description: 'Different types of UI controls', 
           icon: Icons.dashboard, 
           link: '/controls'),
    MenuItem(title: "Notifications", 
           description: 'Different types of notificacions', 
           icon: Icons.notifications, 
           link: '/notifications'),
];