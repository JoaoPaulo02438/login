import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Center(
        child: Container(
          child: Text('LOGIN REALIZADO COM SUCESSO', style: TextStyle(
            color: Colors.blueAccent, fontSize: 20,
          ),),
        ),
      ),
    );
  }
}
