import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Página inicial
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegação Flutter',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Página Inicial')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navega para a segunda página
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondPage()),
            );
          },
          child: const Text('Ir para Segunda Página'),
        ),
      ),
    );
  }
}

// Segunda página
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Segunda Página')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Volta para a página anterior
            Navigator.pop(context);
          },
          child: const Text('Página Anterior'),
        ),
      ),
    );
  }
}
