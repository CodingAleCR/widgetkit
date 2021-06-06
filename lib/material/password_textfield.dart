import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final Key? key;
  final TextEditingController? controller;
  final InputDecoration? decoration;
  final String? Function(String?)? validator;
  final bool? enabled;
  final AutovalidateMode? autovalidateMode;
  final bool autocorrect;
  final void Function(String)? onChanged;

  PasswordTextField({
    this.key,
    this.controller,
    this.enabled,
    this.validator,
    this.autovalidateMode,
    this.autocorrect = true,
    this.decoration,
    this.onChanged,
  });

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  late bool _passwordHidden;

  @override
  void initState() {
    super.initState();
    _passwordHidden = true;
  }

  void togglePasswordVisibility() {
    setState(() {
      _passwordHidden = !_passwordHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.key,
      controller: widget.controller,
      obscureText: _passwordHidden,
      validator: widget.validator,
      autovalidateMode: widget.autovalidateMode,
      autocorrect: widget.autocorrect,
      enabled: widget.enabled,
      decoration: _buildDecoration(),
      onChanged: widget.onChanged,
    );
  }

  InputDecoration _buildDecoration() {
    var decoration;
    if (widget.decoration == null) {
      decoration = InputDecoration(
        suffixIcon: IconButton(
          icon: Icon(
            _passwordHidden ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: togglePasswordVisibility,
        ),
      );
    } else {
      decoration = widget.decoration!.copyWith(
        suffixIcon: IconButton(
          icon: Icon(
            _passwordHidden ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: togglePasswordVisibility,
        ),
      );
    }
    return decoration;
  }
}
