import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListaDeCompras extends StatefulWidget {
  const ListaDeCompras({Key? key});

  @override
  State<ListaDeCompras> createState() => _ListaDeComprasState();
}

class _ListaDeComprasState extends State<ListaDeCompras> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: const Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Lista de Compras',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          GoRouter.of(context).go('/inicio');
        },
        child: const Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
    );
  }
}
