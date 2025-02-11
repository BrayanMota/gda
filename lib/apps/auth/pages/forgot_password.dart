import 'package:flutter/material.dart';
import 'package:gda/components/auth_input.dart';
import 'package:gda/utils/custom_colors.dart';
import 'package:gda/utils/utils.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar:
          true, // Permite que o corpo fique por trás da AppBar
      backgroundColor:
          Colors.transparent, // Garante que o fundo não fique branco
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.chevron_left),
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity, // Garante que ocupe toda a largura
          height: MediaQuery.of(context)
              .size
              .height, // Garante altura total da tela
          decoration: Utils.authBackground(),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/logo/logo.png',
                    width: 233,
                    height: 67,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Recuper senha",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: CustomColors.primaryAuthLabel,
                    ),
                  ),
                  const SizedBox(height: 68),
                  Container(
                    width: 100, // Mesmo tamanho do CircleAvatar
                    height: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          CustomColors.secondaryBackground,
                          CustomColors.primaryBackground,
                        ],
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/browser_protection.png',
                        width: 100, // Ajuste conforme necessário
                        height: 100,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Informe seu e-mail para recuperar sua senha.",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.primaryAuthLabel,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const AuthInput(
                    label: 'E-mail',
                    inputType: 'email',
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: const Text("Continuar"),
                  ),
                  const SizedBox(height: 205),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
