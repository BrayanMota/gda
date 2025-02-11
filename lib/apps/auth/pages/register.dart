import 'package:flutter/material.dart';
import 'package:gda/components/auth_input.dart';
import 'package:gda/utils/custom_colors.dart';
import 'package:gda/utils/utils.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                  "Cadastre-se para acessar o nosso conteúdo",
                  style: TextStyle(
                    fontSize: 14,
                    color: CustomColors.secondaryLabel,
                  ),
                ),
                const SizedBox(height: 46),
                const AuthInput(
                  label: 'Nome Completo',
                  inputType: 'text',
                ),
                const SizedBox(height: 18),
                const AuthInput(
                  label: 'Telefone/Celular',
                  inputType: 'phone',
                ),
                const SizedBox(height: 18),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.all(5),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Voltar',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      // style: ElevatedButton.styleFrom(
                      //   minimumSize: const Size(double.infinity, 50),
                      // ),
                      child: const Text("Registrar"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
