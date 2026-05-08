import 'package:flutter/material.dart';

// ignore: camel_case_types
class detalhes extends StatefulWidget {
  const detalhes({super.key, required this.nomeFilme});

  final String nomeFilme;

  @override
  State<detalhes> createState() => _detalhesState();
}

// ignore: camel_case_types
class _detalhesState extends State<detalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detalhes do Filme')),
      body: Center(
        child: Column(
          // Removed const to allow dynamic content
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.movie, size: 100),
            SizedBox(height: 20),
            Text(
              widget.nomeFilme,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Descrição do filme',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
              child: Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
