import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/telas/main_page.dart' as mainPage;
import 'package:flutter_application_1/telas/forgot_password.dart';
import 'package:flutter_application_1/telas/home.dart';
import 'package:flutter_application_1/telas/smart_lar.dart';
import 'package:flutter_application_1/telas/lista_de_compras_screen.dart';
import 'package:flutter_application_1/telas/minha_dispensa_screen.dart';
import 'package:flutter_application_1/telas/receitas_screen.dart';
import 'package:flutter_application_1/telas/smart_lar.dart';
import 'telas/register.dart';
import 'telas/login_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/Lista_de_compras',
      builder: (context, state) => const ListaDeCompras(),
    ),
    GoRoute(
      path: '/Receitas',
      builder: (context, state) => const Receitas(),
    ),
    GoRoute(
      path: '/Minha_dispensa',
      builder: (context, state) => const MinhaDispensa(),
    ),
    GoRoute(
      path: '/Login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const WifiForm(),
    ),
    GoRoute(
      path: '/Esqueci-minha-senha',
      builder: (context, state) => const ForgotPassword(),
    ),
    GoRoute(
      path: '/Cadastro',
      builder: (context, state) => const Register(),
    ),
    GoRoute(
      path: '/Inicio',
      builder: (context, state) => const mainPage.MainPage(), // Usando o prefixo 'mainPage'
    ),
  ],
  initialLocation: '/',
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Dispensa Inteligente',
      theme: FlexThemeData.light(
        colors: const FlexSchemeColor(
          primary: Color(0xff8bd4b1),
          primaryContainer: Color(0xff8bd4b1),
          secondary: Color(0xffcdd4d1),
          secondaryContainer: Color.fromARGB(255, 98, 186, 142),
          tertiary: Color(0xff8bd4b1),
          tertiaryContainer: Color(0xff8bd4b1),
          appBarColor: Color(0xfffbfdfc),
          error: Color(0xffb00020),
        ),
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 7,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 10,
          blendOnColors: false,
          useTextTheme: true,
          useM2StyleDividerInM3: true,
          alignedDropdown: true,
          useInputDecoratorThemeInDialogs: true,
        ),
        keyColors: const FlexKeyColors(
          useSecondary: true,
          useTertiary: true,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        swapLegacyOnMaterial3: true,
        // To use the Playground font, add GoogleFonts package and uncomment
        // fontFamily: GoogleFonts.notoSans().fontFamily,
      ),
      darkTheme: FlexThemeData.dark(
        colors: const FlexSchemeColor(
          primary: Color(0xff8bd4b1),
          primaryContainer: Color(0xff8bd4b1),
          secondary: Color.fromARGB(255, 34, 205, 160),
          secondaryContainer: Color(0xff8bd4b1),
          tertiary: Color.fromARGB(255, 47, 177, 125),
          tertiaryContainer: Color(0xff8bd4b1),
          appBarColor: Color(0xff8bd4b1),
          error: Color(0xffcf6679),
        ),
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 13,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 20,
          useTextTheme: true,
          useM2StyleDividerInM3: true,
          alignedDropdown: true,
          useInputDecoratorThemeInDialogs: true,
        ),
        keyColors: const FlexKeyColors(
          useSecondary: true,
          useTertiary: true,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        swapLegacyOnMaterial3: true,
        // To use the Playground font, add GoogleFonts package and uncomment
        // fontFamily: GoogleFonts.notoSans().fontFamily,
      ),
      themeMode: ThemeMode.system,
    );
  }
}
