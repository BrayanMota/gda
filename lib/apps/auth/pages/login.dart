import 'package:flutter/material.dart';
import 'package:gda/components/auth_input.dart';
import 'package:gda/routes.dart';
import 'package:gda/utils/custom_colors.dart';
import 'package:gda/utils/utils.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                    "Seja bem-vindo",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: CustomColors.primaryAuthLabel,
                    ),
                  ),
                  const SizedBox(height: 46),
                  const AuthInput(
                    label: 'E-mail',
                    inputType: 'email',
                  ),
                  const SizedBox(height: 18),
                  const AuthInput(
                    label: 'Senha',
                    inputType: 'password',
                  ),
                  const SizedBox(height: 18),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(
                          RoutePaths.forgotPassword,
                        );
                      },
                      child: const Text(
                        "Esqueci minha senha",
                        style: TextStyle(
                          color: CustomColors.secondaryAuthLabel,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: const Text("Entrar"),
                  ),
                  const SizedBox(height: 48),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Divider(
                        height: 1,
                        color: CustomColors.secondaryAuthLabel,
                      ),
                      Text(
                        'Ou entre com',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: CustomColors.secondaryAuthLabel,
                        ),
                      ),
                      Divider(
                        height: 1,
                        color: CustomColors.secondaryAuthLabel,
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: CustomColors.authFillButton,
                            minimumSize: const Size(50, 50),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icons/google.png',
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(width: 10),
                              const VerticalDivider(
                                color: CustomColors.secondaryAuthLabel,
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                "Google",
                                style: TextStyle(
                                  color: CustomColors.primaryAuthLabel,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: CustomColors.authFillButton,
                            minimumSize: const Size(50, 50),
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.apple,
                                size: 20,
                              ),
                              SizedBox(width: 10),
                              VerticalDivider(
                                color: CustomColors.secondaryAuthLabel,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Apple",
                                style: TextStyle(
                                  color: CustomColors.primaryAuthLabel,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Novo no GDA? ",
                        style: TextStyle(
                          color: CustomColors.secondaryAuthLabel,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            RoutePaths.register,
                          );
                        },
                        child: const Text(
                          "Crie uma conta",
                          style: TextStyle(
                            color: CustomColors.primaryAuthLabel,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
