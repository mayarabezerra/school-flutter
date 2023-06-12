import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School',
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(16),
          child: Column( //formato de coluna
              crossAxisAlignment: CrossAxisAlignment.start, //alinhar container no inicio
              children: [
                Card(
                  margin: const EdgeInsets.all(0),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8), //padding dentro do card
                    child: Row(children: [
                      const CircleAvatar(child: Text('M')),
                      const SizedBox(width: 8), //espaço parecido com Space-between
                      const Text('Mayara Bezerra', style:TextStyle(fontWeight: FontWeight.bold)),
                      const Spacer(),
                      IconButton(icon: const Icon(Icons.more_vert),
                        onPressed: () {},
                      )
                    ]),
                  ), 
                ),
                const SizedBox(height: 16),
                const Text(
                  'Minhas estatísticas',
                  style: TextStyle(fontSize: 16)
                ),
                const SizedBox(height: 16),
                const Row(children: [
                  Icon(Icons.list),
                  SizedBox(width: 8),
                  Text('Total de notas:'),
                  Text(' 0')
                ],
                ),
                const Row(children: [
                  Icon(Icons.check),
                  SizedBox(width: 8),
                  Text('Concluídas:'),
                  Text(' 0')
                ],
                ),
                const SizedBox(height: 16), //espaço
                const Divider(), //divisor
                const SizedBox(height: 16),
                const Text('Configurações',
                style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 16),
                Row(children: [
                  const Text('Tema escuro'),
                  const Spacer(),
                  Switch(value: true, onChanged: (val) {})
                ],)
              ]),
        ),
      ),
    );
  }
}
