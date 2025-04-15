import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TelaPrincipal());
  }
}

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Primeira Tela")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SegundaTela()),
            );
          },
          child: Text("Abrir a segunda tela"),
        ),
      ),
    );
  }
}

class SegundaTela extends StatelessWidget {
  const SegundaTela({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Segunda Tela")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => TelaPrincipal()),
            );
          },
          child: Text("Fechar esta tela"),
        ),
      ),
    );
  }
}
