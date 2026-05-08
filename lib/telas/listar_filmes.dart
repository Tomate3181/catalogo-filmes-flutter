import 'package:flutter/material.dart';
import 'package:telas_flutter/telas/datalhes.dart';

class ListarFilmes extends StatefulWidget {
  const ListarFilmes({super.key});

  @override
  State<ListarFilmes> createState() => _ListarFilmesState();
}

class _ListarFilmesState extends State<ListarFilmes> {
  List<String> filmes = [];

  final TextEditingController _controller = TextEditingController();

  Color corFundo = Colors.white;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Filmes')),
      body: Column(
        children: [
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              labelText: 'Nome do Filme',
              hintText: "Digite o nome do filme",
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_controller.text.isEmpty) return;
                filmes.add(_controller.text);
                _controller.clear();
              });
            },
            child: const Text('Adicionar Filme'),
          ),

          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.movie),
                  title: Text(filmes[index]),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => detalhes()),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        filmes.removeAt(index);
                      });
                    },
                    icon: Icon(Icons.delete),
                  ),
                );
              },
              itemCount: filmes.length,
            ),
          ),
        ],
      ),
    );
  }
}
