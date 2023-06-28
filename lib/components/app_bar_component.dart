import 'package:flutter/material.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  final String titulo;

  const AppBarComponent({Key? key, this.titulo = 'School'}) : super(key: key);

  static Size get size => const Size.fromHeight(kToolbarHeight);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titulo),
      actions: [
        const CircleAvatar(
          child: Text('M'),
        )
      ],
    );
  }
}
