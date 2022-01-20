import 'package:carrot_market_cc/locator.dart';
import 'package:carrot_market_cc/model/login_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginModel>(
      create: (context) => locator<LoginModel>(),
      child: Consumer<LoginModel>(
        builder: (context, model, child) => Scaffold(
          body: Column(
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.login, color: Colors.red),
              )
            ],
          ),
        ),
      ),
    );
  }
}
