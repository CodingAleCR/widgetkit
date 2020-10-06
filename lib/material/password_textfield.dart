import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  final InputDecoration decoration;
  final Function(String) validator;
  final bool enabled;
  final AutovalidateMode autovalidateMode;
  final bool autocorrect;

  PasswordTextField({
    this.controller,
    this.enabled,
    this.validator,
    this.autovalidateMode,
    this.autocorrect = true,
    this.decoration,
  });

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _passwordHidden;

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
      controller: widget.controller,
      obscureText: _passwordHidden,
      validator: widget.validator,
      autovalidateMode: widget.autovalidateMode,
      autocorrect: widget.autocorrect,
      enabled: widget.enabled,
      decoration: _buildDecoration(),
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
      decoration = widget.decoration.copyWith(
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
