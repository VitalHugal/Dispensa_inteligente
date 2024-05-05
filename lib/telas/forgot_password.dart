import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts/spacing_const.dart';
import '../components/input.dart';
import 'package:go_router/go_router.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(SpacingConst.baseSpacing*2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const  Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Digite seu e-mail para recuperar sua senha.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            const  SizedBox(height: SpacingConst.baseSpacing*2), 
            const  Input(
                label: 'E-mail',
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                width: 300,
              ),
              FilledButton(
                onPressed: () {
                  context.go('/Login');
                },
                child: const Text('Enviar'),
              ),
              const SizedBox(height: SpacingConst.baseSpacing),
              FilledButton(
                onPressed: () {
                  context.go('/Login');
                },
                child: const Text('Voltar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
