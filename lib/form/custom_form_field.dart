import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class CustomFormField extends StatelessWidget {
  CustomFormField({
    Key? key,
    required this.hintText,
    this.inputFormatters,
    this.validator,
  }) : super(key: key);
  final String hintText;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        inputFormatters: inputFormatters,
        validator: validator,
        decoration: InputDecoration(hintText: hintText),
      ),
    );
  }
}

extension extString on String {
  //deve conter @ e .com
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+$");
    return emailRegExp.hasMatch(this);
  }
  bool get isValidName{
    //nome e sobrenome
    final nameRegExp = new RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return nameRegExp.hasMatch(this);
  }
  bool get isValidPassword{
    //uma letra maiuscula, uma letra minuscula, um digito e caractere especial.
    final passwordRegExp =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{4,}');
    return passwordRegExp.hasMatch(this);
  }
  bool get isNotNull{
    return this!=null;
  }
  bool get isValidPhone{
    //contém 12 digitos{ddd+9+numero}
    final phoneRegExp = RegExp(r"^\+?0[0-9]{11}$");
    return phoneRegExp.hasMatch(this);
  }

}