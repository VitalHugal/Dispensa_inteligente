import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts/spacing_const.dart';
import '../components/input.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(SpacingConst.baseSpacing * 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/image/logo2.png',
                  width: 100,
                ),
                const SizedBox(height: SpacingConst.baseSpacing * 2),
                const Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SpacingConst.baseSpacing * 2),
                  child: Input(
                    label: 'Usuário',
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    width: 300,
                  ),
                ),
                const SizedBox(height: SpacingConst.baseSpacing),
                const Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SpacingConst.baseSpacing * 2),
                  child: Input(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    label: 'Senha',
                    obscureText: true,
                    width: 300,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    context.push('/esqueci-minha-senha');
                  },
                  child: const Text('Esqueci minha senha'),
                ),
                const SizedBox(height: SpacingConst.baseSpacing),
                FilledButton(
                  onPressed: () {
                    context.go('/inicio');
                  },
                  child: const Text('Entrar'),
                ),
                const SizedBox(height: SpacingConst.baseSpacing),
                FilledButton(
                  onPressed: () {
                    context.push('/cadastro');
                  },
                  child: const Text('Cadastre-se'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
