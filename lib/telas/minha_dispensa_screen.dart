import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MinhaDispensa extends StatefulWidget {
  const MinhaDispensa({Key? key});

  @override
  State<MinhaDispensa> createState() => _MinhaDispensaState();
}

class _MinhaDispensaState extends State<MinhaDispensa> {
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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          GoRouter.of(context).go('/inicio');
        },
        child: const Icon(Icons.arrow_back_ios),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
    );
  }
}
