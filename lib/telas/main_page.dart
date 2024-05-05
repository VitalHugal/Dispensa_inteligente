import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts/spacing_const.dart';
// import '../components/input.dart';
import 'package:go_router/go_router.dart';
import '../components/base_scaffold.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(SpacingConst.baseSpacing * 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Primeiro container com imagem
              Container(
                height: 280,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Adicione aqui a ação que deseja realizar ao tocar no container
                          context.go('/minha_dispensa');
                        },
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xfffbfdfc),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const Center(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    'Minha Dispensa',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 20,
                              top: 20,
                              child: Image.asset(
                                'assets/image/dispensa.jpeg',
                                width: 130,
                                height: 240,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(width: SpacingConst.baseSpacing),
                    // Segundo container
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Adicione aqui a ação que deseja realizar ao tocar no container
                          context.go('/receitas');
                        },
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xfffbfdfc),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
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
                            Positioned(
                              left: 20,
                              top: 20,
                              child: Image.asset(
                                'assets/image/receitas.jpeg',
                                width: 130,
                                height: 240,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: SpacingConst.baseSpacing),
// Terceiro container
              GestureDetector(
                onTap: () {
                  // Adicione aqui a ação que deseja realizar ao tocar no container
                  context.go('/lista_de_compras');
                },
                child: Container(
                  height: 280,
                  child: Center(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xfffbfdfc),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
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
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'assets/image/carrinho.jpeg',
                              width: 220,
                              height: 300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
