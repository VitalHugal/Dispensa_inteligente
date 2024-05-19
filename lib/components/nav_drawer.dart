import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/nav_drawer_tile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../consts/spacing_const.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Text(
                'Menu',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                ),
              ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  // Opção para inicio
                  NavDrawerTile(
                    icon: FontAwesomeIcons.home,
                    onTap: () {
                      // Navegue para a página de inicio
                      context.go('/inicio');
                    },
                    text: 'Inicio',
                  ),
                  const SizedBox(height: SpacingConst.baseSpacing * 2), // Espaçamento entre os ícones
                  NavDrawerTile(
                    icon: FontAwesomeIcons.box,
                    onTap: () {
                      // Navegue para a página de Minha Dispensa
                      context.go('/minha_dispensa');
                    },
                    text: 'Minha Dispensa',
                  ),
                  const SizedBox(height: SpacingConst.baseSpacing * 2), // Espaçamento entre os ícones
                  // Opção para Receitas
                  NavDrawerTile(
                    icon: FontAwesomeIcons.bookOpen,
                    onTap: () {
                      // Navegue para a página de Receitas
                      context.go('/receitas');
                    },
                    text: 'Receitas',
                  ),
                  const SizedBox(height: SpacingConst.baseSpacing * 2), // Espaçamento entre os ícones
                  // Opção para Lista de Compras
                  NavDrawerTile(
                    icon: FontAwesomeIcons.basketShopping,
                    onTap: () {
                      // Navegue para a página de Lista de Compras
                      context.go('/lista_de_compras');
                    },
                    text: 'Lista de Compras',
                  ),
                ],
              ),
              // Espaçamento entre as opções e a opção "Sair"
              const SizedBox(height: SpacingConst.baseSpacing * 35),
            ],
          ),
          // Opção para Sair
          NavDrawerTile(
            icon: FontAwesomeIcons.doorOpen,
            onTap: () {
              // Navegue para a página inicial
              context.go('/');
            },
            text: 'Sair',
          ),
        ],
      ),
    );
  }
}
