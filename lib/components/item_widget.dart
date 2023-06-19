import 'package:flutter/material.dart';
import 'package:school/components/icon_button_component.dart';
import 'package:school/components/spacer_component.dart';
import 'package:school/entities/afazer_entity.dart';

class ItemWidget extends StatelessWidget {
  final AfazerEntity item;
  const ItemWidget({super.key, required this.item});

  Widget status() {
    final icon = item.isConcluido == true ? Icons.done_all : Icons.done;
    final color = item.isConcluido == true ? Colors.green : Colors.grey[400];
    return Icon(
      icon,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 2.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(children: [
            status(),
            const SpacerComponent(isHorizontal: true),
            Text(
              item.titulo,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SpacerComponent(isFull: true),
            IconButtonComponent(
              icon: Icons.arrow_forward_ios,
              onPressed: () {},
            ),
          ]),
        ),
      ),
    );
  }
}
