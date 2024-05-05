import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts/spacing_const.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image/logo2.png',
              width: 100,
            ),
          const  SizedBox(height: SpacingConst.baseSpacing*2),
            const Text(
              'Olá, bem vindo ao Dispensa Inteligente!',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        
        onPressed: () {
          GoRouter.of(context).go('/login');
        },
        child: Icon(Icons.arrow_forward),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .endFloat, 
    );
  }
}
