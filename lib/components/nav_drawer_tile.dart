import 'package:flutter/material.dart';

import '../consts/spacing_const.dart';

class NavDrawerTile extends StatelessWidget {
  final Widget? heading;
  final String text;
  final VoidCallback onTap;
  final IconData? icon;

  const NavDrawerTile({
    super.key,
    this.heading,
    required this.text,
    required this.onTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          heading ??
              Icon(
                icon,
                size: 35,
                color: Theme.of(context).primaryColor,
              ),
          Padding(
            padding:
                const EdgeInsets.only(left: SpacingConst.baseSpacing * 1.5),
            child: Text(text),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
