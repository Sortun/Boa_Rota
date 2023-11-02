
import 'package:flutter/material.dart';
import 'package:find_transportes/Mapa/maps.dart';


class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    loadMapData();
  }
      Future<void> loadMapData() async {
       //simula um carregamento da tela do mapa com 2 secs de atraso

    await Future.delayed(const Duration(seconds: 4));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const Mapa()),
    );
  }
  
  Widget build(BuildContext context) {
    return const Scaffold(
       body: Center(child: CircularProgressIndicator(),));
  }
}
