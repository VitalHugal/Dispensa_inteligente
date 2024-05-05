import 'package:flutter/material.dart';

class Receitas extends StatefulWidget {
  const Receitas({Key? key});

  @override
  State<Receitas> createState() => _ReceitasState();
}

class _ReceitasState extends State<Receitas> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Container(
              child: const Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Receitas',
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
    );
  }
}
