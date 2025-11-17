import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "Contador de Letras", home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController letraController = TextEditingController();
  int valor = 0;

  void contarLetras() {
    setState(() {
      valor = letraController.text.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contador de Letras"), centerTitle: true),
      body: Column(
        spacing: 15,
        children: [
          Text(
            "Escreva um texto no campo abaixo, clique no botão e será mostrado quantas letras o texto tem: ",
          ),

          TextField(
            controller: letraController,
            decoration: InputDecoration(label: Text("Palavra")),
          ),

          ElevatedButton(
            child: Text("Contar"),
            onPressed: () {
              contarLetras();
            },
          ),

          Text("Total de letras: $valor"),
        ],
      ),
    );
  }
}
