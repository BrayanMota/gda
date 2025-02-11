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
      body: Container(
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
                    color: CustomColors.secondaryLabel,
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
                        color: CustomColors.secondaryLabel,
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
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      RoutePaths.register,
                    );
                  },
                  child: const Text(
                    "Novo no GDA? Crie uma conta",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
