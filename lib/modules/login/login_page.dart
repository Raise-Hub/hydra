import 'package:flutter/material.dart';
import 'package:hydra/modules/cadastro/cadastro_page.dart';
import 'package:hydra/modules/home/home_page.dart';
import 'package:hydra/shared/themes/app_images.dart';
import 'package:hydra/shared/themes/app_text_styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> _login() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage())  
    ); // Navigator.of(context).popAndPushNamed('/players');
  }

  Future<void> _register() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CadastroPage())  
    ); // Navigator.of(context).popAndPushNamed('/players');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 200, left: 50, right: 50, bottom: 200),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.logoLogin,
                    width: 150,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 60,
                      right: 70
                    ),
                    child: Text('HYDRA', textAlign: TextAlign.center, style: TextStyles.titleHydra),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text('User'),
                    ),
                    validator: (value) {
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      label: Text('Password')
                    ),
                    validator: (password) {
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: _login,
                    child: const Text('ENTER')),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: InkWell(
                      child: const Text('Registre-se'),
                      onTap: _register,
                    ),
                  )
                ],
              ),
            ),  
          ),

        )
      ),
    );
  }
}