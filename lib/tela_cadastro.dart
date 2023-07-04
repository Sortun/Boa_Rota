import 'package:flutter/material.dart';

void main() {
  runApp(const Cadastro());
}

class Cadastro extends StatelessWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Cadastro', home: MyHomePage(), 
    debugShowCheckedModeBanner: false,); 
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_sharp), onPressed: () {}),
        title: const Text('Cadastro'),
        centerTitle: true,
        ),
        body: const Center());
  }
}