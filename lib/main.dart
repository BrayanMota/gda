import 'package:gda/routes.dart';
import 'package:gda/utils/custom_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de Caixa',
      theme: CustomThemeData().themeData(),
      debugShowCheckedModeBanner: false,
      initialRoute: RoutePaths.login,
      routes: RoutePaths.getRoutes(),
    );
  }
}
