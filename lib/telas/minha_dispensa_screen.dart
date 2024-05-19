import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/base_scaffold.dart';
import 'package:go_router/go_router.dart';

class MinhaDispensa extends StatefulWidget {
  const MinhaDispensa({Key? key}) : super(key: key);

  @override
  State<MinhaDispensa> createState() => _MinhaDispensaState();
}

class _MinhaDispensaState extends State<MinhaDispensa> {
  List<String> _items = [];
  final TextEditingController _textController = TextEditingController();

  void _addItem() {
    if (_textController.text.isNotEmpty) {
      setState(() {
        _items.add(_textController.text);
        _textController.clear();
      });
    }
  }

  void _editItem(int index) {
    _textController.text = _items[index];
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Editar Item'),
          content: TextField(
            controller: _textController,
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  _items[index] = _textController.text;
                  _textController.clear();
                });
                Navigator.of(context).pop();
              },
              child: const Text('Salvar'),
            ),
          ],
        );
      },
    );
  }

  void _deleteItem(int index) {
    setState(() {
      _items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body:  Column(
        children: [
          Container(
            child: const Text(
              'Minha Dispensa',
              style: TextStyle(
                fontSize: 26,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'Novo Item',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: _addItem,
                child: const Text('Incluir'),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_items.isNotEmpty) {
                    _editItem(_items.length - 1);
                  }
                },
                child: const Text('Editar'),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_items.isNotEmpty) {
                    _deleteItem(_items.length - 1);
                  }
                },
                child: const Text('Deletar'),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_items[index]),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () => _editItem(index),
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => _deleteItem(index),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MainPage(),
      ),
      GoRoute(
        path: '/main_page',
        builder: (context, state) => const MainPage(),
      ),
      GoRoute(
        path: '/lista_de_compras',
        builder: (context, state) => const MinhaDispensa(),
      ),
    ],
  );

  runApp(MaterialApp.router(
    routerConfig: router,
  ));
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            GoRouter.of(context).go('/lista_de_compras');
          },
          child: const Text('Ir para Lista de Compras'),
        ),
      ),
    );
  }
}
