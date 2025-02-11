import 'package:flutter/material.dart';
import 'package:gda/components/auth_label.dart';
import 'package:gda/utils/custom_colors.dart';

class AuthInput extends StatefulWidget {
  final String label;
  final String subLabel;
  final String placeHolder;
  final String inputType;

  const AuthInput({
    Key? key,
    required this.label,
    this.subLabel = '',
    this.placeHolder = '',
    this.inputType = 'text',
  }) : super(key: key);

  @override
  _AuthInputState createState() => _AuthInputState();
}

class _AuthInputState extends State<AuthInput> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AuthLabel(label: widget.label),
        const SizedBox(height: 6),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: _isFocused
                ? const LinearGradient(
                    colors: [
                      CustomColors.secondaryBackground,
                      CustomColors.primaryBackground,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )
                : const LinearGradient(
                    colors: [
                      CustomColors.authFillButton,
                      CustomColors.authFillButton,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: TextField(
              focusNode: _focusNode,
              obscureText: widget.inputType == 'password',
              keyboardType: widget.inputType == 'email'
                  ? TextInputType.emailAddress
                  : widget.inputType == 'phone'
                      ? TextInputType.phone
                      : TextInputType.text,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder
                    .none, // Remove a borda para manter o gradiente visível
                suffixIcon: widget.inputType == 'password'
                    ? const Icon(Icons.visibility, color: Colors.white)
                    : null,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
