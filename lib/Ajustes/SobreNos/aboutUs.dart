import 'package:find_transportes/Ajustes/SobreNos/termsOfUse.dart';
import 'package:flutter/material.dart';
import 'privacyPolicy.dart';
// import 'package:find_transportes/widget.dart';

List<String> aboutUs = ['Política de Privacidade', 'Termos de Uso'];

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Sobre Nós',
            style: TextStyle(color: Colors.black54, fontSize: 18)),
        iconTheme: const IconThemeData(
          color: Color.fromARGB(234, 118, 238, 188),
        ),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
              itemCount: aboutUs.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                      onTap: () {
                        if (index == 0) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const PrivacyPolicy()));
                        } else {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const TermsOfUse()));
                        }
                      },
                      title: Text(
                        aboutUs[index],
                        style: const TextStyle(color: Colors.black54),
                      ),
                      contentPadding: const EdgeInsets.all(15)),
                );
              },
            ),
          ),
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(),
                Column(
                  children: [
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.copyright_rounded,
                          color: Colors.black38,
                        ),
                        Text(' Boa Rota',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.black38,
                            )),
                        Text(
                          ' - 2023',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black38,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
