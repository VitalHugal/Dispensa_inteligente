import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts/spacing_const.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;

class WifiForm extends StatefulWidget {
  const WifiForm({Key? key}) : super(key: key); // Adicionando Key opcional como boa prática.

  @override
  _WifiFormState createState() => _WifiFormState();
}

class _WifiFormState extends State<WifiForm> {
  final TextEditingController _ssidController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> sendWifiCredentials(String ssid, String password) async {
    final url = Uri.parse('http://192.168.4.1/connect'); // IP do ESP8266 no modo AP

    try {
      final response = await http.post(url, body: {
        'ssid': ssid,
        'password': password,
      });

      if (response.statusCode == 200) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Conectado'),
            content: const Text('ESP8266 tentando conectar ao Wi-Fi.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
      } else {
        throw Exception('Erro ao conectar.');
      }
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Erro'),
          content: Text('Falha ao enviar credenciais: $e'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conectar à ESP8266'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _ssidController,
              decoration: const InputDecoration(labelText: 'SSID do Wi-Fi'),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Senha do Wi-Fi'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                sendWifiCredentials(
                  _ssidController.text,
                  _passwordController.text,
                );
              },
              child: const Text('Enviar Credenciais'),
            ),
          ],
        ),
      ),
    );
  }
}

// Configuração do GoRouter

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const WifiForm(),
    ),
  ],
);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'App ESP8266',
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
    );
  }
}
