import 'package:find_transportes/Core/widget.dart';
import 'package:flutter/material.dart';
import 'privacyPolicy.dart';
import 'package:find_transportes/Ajustes/SobreNos/termsOfUse.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Obrigado por escolher nosso aplicativo!',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: defaultColor),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              ' Estamos constantemente trabalhando para melhorar a experiência do usuário e oferecer serviços de alta qualidade. Suas sugestões e comentários são incrivelmente importantes para nós.',
              style: TextStyle(fontSize: 18, color: Colors.grey[800]),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            Text(
              ' Se você tiver qualquer sugestão, ideia para melhorias ou até mesmo críticas construtivas, não hesite em compartilhá-las conosco no email a seguir.',
              style: TextStyle(fontSize: 18, color: Colors.grey[800]),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 10),
            Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  ' Email para contato: appboarota@gmail.com',
                  style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                )),
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                shrinkWrap: true,
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
                      contentPadding: const EdgeInsets.all(15),
                    ),
                  );
                },
              ),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Boa Rota - 2023',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black38,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
