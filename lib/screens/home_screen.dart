import 'package:flutter/material.dart';

import '../view/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 82, 172, 245),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'مرحبا بكم في متجر الإلكترونيات',
          ),
          actions: [
            IconButton(onPressed: (() {}), icon: const Icon(Icons.menu))
          ],
        ),
        body: HomeBody());
  }
}
