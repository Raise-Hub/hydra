import 'package:flutter/material.dart';
import 'package:hydra/shared/themes/app_images.dart';
import 'package:hydra/shared/themes/app_text_styles.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({ Key? key }) : super(key: key);

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> _cadastrar() async {
    print('CLICOU');
    // Navigator.of(context).popAndPushNamed('/players');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 200, left: 50, right: 50),
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
                    child: Text('Cadastre-se', textAlign: TextAlign.center, style: TextStyles.captionBoldBackground),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text('Nome'),
                    ),
                    validator: (value) {
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text('Nickname'),
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
                      print(password.toString());
                    },
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: _cadastrar,
                    child: const Text('CADASTRAR')
                  )
                ],
              )
            ),
          )
        ),
      ),
    );
  }
}