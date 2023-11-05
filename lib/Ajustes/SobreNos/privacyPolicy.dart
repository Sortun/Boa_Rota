import 'package:find_transportes/Core/widget.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Política de Privacidade - Boa Rota',
            style: TextStyle(color: Colors.black54, fontSize: 18),
          ),
          iconTheme: const IconThemeData(
            color: Color.fromARGB(234, 118, 238, 188),
          ),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 10.0),
          child: SingleChildScrollView(
            child: Column(children: [
              const Divider(),
              Text(style: subtitle, "Última Atualização: 01/11/2023"),
              Text(
                style: defaultText,
                "  Bem-vindo ao Aplicativo Boa Rota. Estamos comprometidos em proteger sua privacidade e manter a segurança dos dados que coletamos. Esta Política de Privacidade tem como objetivo informar sobre como tratamos suas informações pessoais quando você utiliza nosso aplicativo e quais são seus direitos e opções em relação a esses dados.",
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("1. Informações Coletadas", style: subtitle),
              ),
              Text(
                style: defaultText,
                "  a. Cadastro do Usuário: Para utilizar o Aplicativo de Transporte Público, é necessário que você forneça informações pessoais, como nome, endereço de e-mail e outras informações necessárias para criar sua conta. Esses dados são usados para identificação, comunicação e personalização de serviços.",
              ),
              Text(
                style: defaultText,
                "  b. Localização do Dispositivo: O aplicativo coleta informações de localização do dispositivo móvel, tanto dentro quanto fora do aplicativo, para fornecer recursos essenciais, como planejamento de rota e a geolocalização do usuário. O uso da localização do dispositivo é estritamente vinculado à finalidade de fornecer serviços de transporte público.",
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("2. Uso de Informações Pessoais", style: subtitle),
              ),
              Text(
                style: defaultText,
                "  a. Melhorias no Aplicativo: Analisamos os dados de uso para aprimorar a experiência do usuário, otimizar rotas e horários e realizar melhorias gerais no aplicativo.",
              ),
              Text(
                style: defaultText,
                "  b. Comunicação: Podemos entrar em contato com você por meio do aplicativo ou por e-mail para fornecer informações importantes, atualizações e notificações de serviço.",
              ),
              const SizedBox(height: 10),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("3. Compartilhamento de Dados", style: subtitle)),
              Text(
                style: defaultText,
                "  a. Parceiros de Transporte: Podemos compartilhar informações com autoridades de transporte público e operadoras de transporte a fim de melhorar os serviços e a experiência do usuário. Seus dados pessoais nunca serão vendidos ou divulgados a terceiros com fins comerciais.",
              ),
              Text(
                style: defaultText,
                "  b. Requisitos Legais: Em conformidade com a legislação aplicável, podemos ser obrigados a divulgar informações pessoais em resposta a uma solicitação válida de autoridades governamentais ou para cumprir com obrigações legais.",
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("4. Segurança de Dados", style: subtitle),
              ),
              Text(
                style: defaultText,
                "  Tomamos medidas para garantir a segurança de suas informações pessoais, incluindo o uso de protocolos de segurança e criptografia de dados.",
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("5. Consentimento", style: subtitle),
              ),
              Text(
                style: defaultText,
                "  Ao utilizar o Aplicativo de Transporte Público, você concorda com a coleta e o processamento de suas informações pessoais de acordo com esta Política de Privacidade.",
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("6. Alterações na Política de Privacidade",
                    style: subtitle),
              ),
              Text(
                style: defaultText,
                "  Esta Política de Privacidade pode ser atualizada periodicamente. Informaremos sobre quaisquer alterações significativas através de notificações no aplicativo ou por e-mail.",
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("7. Contato", style: subtitle),
              ),
              Text(
                style: defaultText,
                "  Se você tiver alguma dúvida ou preocupação sobre esta Política de Privacidade ou o tratamento de seus dados pessoais, entre em contato conosco pelo e-mail appBoarota@gmail.com.",
              ),
              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 10),
              Text(
                style: defaultText,
                "  Obrigado por confiar no Aplicativo Boa Rota para suas necessidades de locomoção. Estamos comprometidos em proteger sua privacidade e garantir uma experiência segura e eficiente para todos os nossos usuários.",
              ),
                            const SizedBox(height: 10),

            ]),
          ),
        ));
  }
}
