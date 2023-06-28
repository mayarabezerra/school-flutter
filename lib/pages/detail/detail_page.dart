import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:school/components/body_component.dart';
import 'package:school/providers/afazer_provider.dart';
import 'package:school/services/picker_service.dart';
import 'components/detail_header.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late AfazerProvider store;

  void onEditImage() async {
    final pickerService = PickerService();
    final image = await pickerService.getImage(ImageSource.gallery);
    if (image != null) {
      final base64 = pickerService.base64(await image.readAsBytes());
      store.atualizarItemAfazer(0, base64);
    }
  }

 @override
  Widget build(BuildContext context) {
    store = Provider.of<AfazerProvider>(context);
    return BodyComponent(
      child: Column(children: [
        DetalheHeaderWidget(
          item: store.listaAfazeres.elementAt(0),
          onEdit: onEditImage,
        ),
      ]),
    );
  }
}