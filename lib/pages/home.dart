import 'package:flutter/material.dart';
import 'package:gda/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leadingWidth: 200, // Define um espaço maior para o leading
        leading: const Padding(
          padding: EdgeInsets.symmetric(
              vertical: 18, horizontal: 20), // Centraliza verticalmente
          child: Text(
            'Olá Brayan',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
        toolbarHeight: 74,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(RoutePaths.profile);
            },
            icon: const Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: const Center(
          child: Text(
            '24',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
