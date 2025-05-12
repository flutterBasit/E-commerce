import 'package:flutter/material.dart';

class AuthTextField extends StatefulWidget {
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final IconData? prefixIcons;
  final IconData? sufficons;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final bool isPassword;
  final bool showPasswordToggle;
  final TextInputAction textInputAction;
  final FocusNode? focusnode;
  final VoidCallback? onSubmitted;

  const AuthTextField(
      {super.key,
      this.keyboardType,
      this.controller,
      this.hintText,
      this.labelText,
      this.prefixIcons,
      this.sufficons,
      this.onChanged,
      this.validator,
      this.isPassword = false,
      this.showPasswordToggle = true,
      this.textInputAction = TextInputAction.next,
      this.focusnode,
      this.onSubmitted});

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  bool _obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      validator: widget.validator,
      obscureText: widget.isPassword && _obsecureText,
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      focusNode: widget.focusnode,
      onFieldSubmitted: (_) => widget.onSubmitted?.call(),
      decoration: InputDecoration(
          hintText: widget.hintText,
          labelText: widget.labelText,
          prefixIcon:
              widget.prefixIcons != null ? Icon(widget.prefixIcons) : null,
          suffixIcon: widget.isPassword && widget.showPasswordToggle
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      _obsecureText = !_obsecureText;
                    });
                  },
                  icon: Icon(
                      _obsecureText ? Icons.visibility_off : Icons.visibility))
              : null,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
    );
  }
}
