import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school/app_routes.dart';
import 'package:school/pages/home/components/item_widget.dart';
import 'package:school/providers/afazer_provider.dart';
import '../../../entities/afazer_entity.dart';
import '../components/novo_item_widget.dart';

class AfazeresTab extends StatefulWidget {
  const AfazeresTab({
    super.key,
  });

  @override
  State createState() => _AfazeresTab();
}

class _AfazeresTab extends State<AfazeresTab> {
  late AfazerProvider store;

  void handleExcluir(int index) {
    store.removerItemAfazer(index);
  }

  void onDetail(AfazerEntity item, int idx) {
    Navigator.pushNamed(context, AppRoutes.detail);

  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    store = Provider.of<AfazerProvider>(context);

    return ListView.builder(
      itemCount: store.listaAfazeres.length,
      itemBuilder: (context, index) {
        final item = store.listaAfazeres.elementAt(index);
        return Dismissible(
          key: Key(item.uuid),
          onDismissed: (direction) {
            if (direction == DismissDirection.startToEnd) {
              handleExcluir(index);
            }
          },
          child: ItemWidget(
            item: item,
            onPressed: () {
              onDetail(item, index);
            },
          ),
        );
      },
    );
  }
}
