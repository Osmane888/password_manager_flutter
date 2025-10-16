import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  // Clé du formulaire
  final _formKey = GlobalKey<FormState>();

  // Controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _submitForm() {
    if(_formKey.currentState!.validate()){
      final email = _emailController;
      final password = _passwordController;

      FirebaseAuth.instance.signInWithEmailAndPassword(email: email.toString(), password: password.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Connexion')),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if(value == null || value.isEmpty){
                  return "L'email est obligatoire";
                } else {
                  return null;
                }
              },
            ),
            TextFormField(
              controller: _passwordController,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if(value == null || value.isEmpty){
                  return "Le mot de passe est obligatoire";
                } else {
                  return null;
                }
              },
            )
          ],
        )
        )
    );
  }
}