import 'package:flutter/material.dart';

// ignore: camel_case_types
class detalhes extends StatefulWidget {
  const detalhes({super.key});

  @override
  State<detalhes> createState() => _detalhesState();
}

// ignore: camel_case_types
class _detalhesState extends State<detalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detalhes do Filme')),
      body: const Center(
        child: Text('Aqui estão os detalhes do filme selecionado.'),
      ),
    );
  }
}
