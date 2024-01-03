import 'package:flutter/material.dart';
import 'package:vakinhaburger/app/core/ui/styles/text_styles.dart';
import 'package:vakinhaburger/app/core/ui/widgets/delivery_appbar.dart';
import 'package:vakinhaburger/app/core/ui/widgets/delivery_button.dart';
import 'package:validatorless/validatorless.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailEC = TextEditingController();
  final _passwordEC = TextEditingController();

  @override
  void dispose() {
    _emailEC.dispose();
    _passwordEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppbar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: context.textStyles.textTitle,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: _emailEC,
                      decoration: const InputDecoration(
                        labelText: 'E-mail',
                      ),
                      validator: Validatorless.multiple([
                        Validatorless.required('E-mail obrigatório.'),
                        Validatorless.email('E-mail inválido.')
                      ]),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: _passwordEC,
                      decoration: const InputDecoration(
                        labelText: 'Senha',
                      ),
                      validator: Validatorless.multiple([
                        Validatorless.required('Senha obrigatória.'),
                      ]),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: DeliveryButton(
                        onPressed: () {
                          final valid =
                              _formKey.currentState?.validate() ?? false;

                          if (valid) {}
                        },
                        label: 'Entrar',
                        width: double.infinity,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Não possui uma conta?',
                      style: context.textStyles.textBold,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/auth/register');
                      },
                      child: Text(
                        'Cadastra-se',
                        style: context.textStyles.textBold
                            .copyWith(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
