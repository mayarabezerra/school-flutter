import 'package:flutter/material.dart';
import 'package:school/components/app_bar_component.dart';
import 'package:school/pages/home/abas/afazes_tab.dart';
import 'package:school/pages/home/abas/perfil_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  late int abaSelecionada;
  final List<BottomNavigationBarItem> _abas = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.account_circle), label: 'Perfil'),
  ];

  final List<Widget> _conteudos = [
    AfazeresTab(
      valorInicial: 0,
      callback: (tabIndex) {
        print(tabIndex);
      },
    ),
    const PerfilTab(),
  ];

  void handleTab(int tabIndex) {
    setState(() {
      abaSelecionada = tabIndex;
    });
  }

  @override
  void initState() {
    abaSelecionada = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarComponent(),
      body: _conteudos.elementAt(abaSelecionada),
      bottomNavigationBar: BottomNavigationBar(
        onTap: handleTab,
        currentIndex: abaSelecionada,
        items: _abas,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
