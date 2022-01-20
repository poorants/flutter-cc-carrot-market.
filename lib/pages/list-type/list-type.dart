import 'package:flutter/material.dart';

class ListTypePage extends StatefulWidget {
  const ListTypePage({Key? key}) : super(key: key);

  @override
  State<ListTypePage> createState() => _ListTypePageState();
}

class _ListTypePageState extends State<ListTypePage> {
  late TextEditingController _idController;
  late TextEditingController _passwordController;
  FocusNode node1 = FocusNode();
  late String sample;

  @override
  void initState() {
    super.initState();
    sample = 'test';
    // _idController = TextEditingController();
    _idController = TextEditingController(text: sample);
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _idController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Row _buttons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          child: const Text('LOGIN'),
          onPressed: () => showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(content: Text(_idController.text));
            },
          ),
        ),
        const SizedBox(width: 20),
        TextButton(
          onPressed: () => FocusScope.of(context).requestFocus(node1),
          child: const Text('FOCUS'),
        ),
      ],
    );
  }

  TextField _idField() {
    return TextField(
      focusNode: node1,
      controller: _idController,
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.person_outline),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }

  TextField _passwordField() {
    return TextField(
      controller: _passwordController,
      decoration: const InputDecoration(
        labelText: 'password',
        helperText: 'input your password',
        // hintText: 'input your id',
        prefixIcon: Icon(Icons.remove_red_eye_outlined),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _idField(),
            const SizedBox(height: 20),
            _passwordField(),
            const SizedBox(height: 20),
            _buttons(context)
          ],
        ),
      ),
    );
  }
}
