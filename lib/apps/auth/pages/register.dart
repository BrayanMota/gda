import 'package:flutter/material.dart';
import 'package:gda/components/auth_input.dart';
import 'package:gda/utils/custom_colors.dart';
import 'package:gda/utils/utils.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final FocusNode _focusNode = FocusNode();
  bool _isChecked = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _isChecked = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

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
                    "Cadastre-se para acessar o nosso conteúdo",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: CustomColors.primaryAuthLabel,
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
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Checkbox(
                        fillColor: WidgetStateProperty.all(Colors.white),
                        checkColor: CustomColors.primaryBackground,
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                      ),
                      const Expanded(
                        child: Text(
                          "Ao clicar na caixa ao lado, certifico que o site me de notificações sobre essa empresa.",
                          style: TextStyle(
                            color: CustomColors.primaryAuthLabel,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Saiba mais sobre Funções de Notificações',
                        style: TextStyle(
                          color: CustomColors.secondaryBackground,
                        ),
                      ),
                      SizedBox(height: 4),
                      Icon(
                        Icons.link,
                        color: CustomColors.secondaryBackground,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: const Text("Registrar"),
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
