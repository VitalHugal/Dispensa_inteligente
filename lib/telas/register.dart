import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts/spacing_const.dart';
import '../components/input.dart';
import 'package:go_router/go_router.dart';

class Register extends StatefulWidget {
  const Register({Key? key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding:const EdgeInsets.all(SpacingConst.baseSpacing * 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                children: [
                  Text(
                    'Preencha os campos, para concluir seu cadastro:',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: SpacingConst.baseSpacing * 2),
              const Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: SpacingConst.baseSpacing),
                child: Input(
                  label: 'Nome Completo',
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  width: 300,
                ),
              ),
              const SizedBox(height: SpacingConst.baseSpacing),
              const Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: SpacingConst.baseSpacing),
                child: Input(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  label: 'E-mail',
                  width: 300,
                ),
              ),
              const SizedBox(height: SpacingConst.baseSpacing),
              const Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: SpacingConst.baseSpacing),
                child: Input(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  label: 'Senha',
                  obscureText: true,
                  width: 300,
                ),
              ),
              const SizedBox(height: 20),
              FilledButton(
                onPressed: () {
                  context.go('/Login');
                },
                child: const Text('Cadastre-se'),
              ),
              const SizedBox(height: 20),
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
