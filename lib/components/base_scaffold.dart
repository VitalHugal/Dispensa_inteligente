import 'package:flutter/material.dart';

import 'nav_drawer.dart';

class BaseScaffold extends StatelessWidget {
  final Widget body;
  final bool showAppBar;
  final Color? backgroundColor; // Adicione esta linha

  const BaseScaffold({
    required this.body,
    this.showAppBar = true,
    this.backgroundColor, // Adicione esta linha
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: showAppBar
          ? AppBar(
            title: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Text('Menu')
              ],
            ),
              backgroundColor: const Color(0xff8bd4b1),
            )
          : null,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(),
          child: Container(
            color: backgroundColor ?? const Color(0xff8bd4b1), 
            child: body,
          ),
        ),
      ),
    );
  }
}