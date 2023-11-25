import 'package:find_transportes/Core/widget.dart';
import 'package:flutter/material.dart';

class TermsOfUse extends StatelessWidget {
  const TermsOfUse({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Termos de Uso - Boa Rota',
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
                  "  Bem-vindo ao aplicativo Boa Rota. Este aplicativo foi desenvolvido como parte de um projeto de Trabalho de Conclusão de Curso (TCC) e tem o objetivo de proporcionar aos usuários uma experiência de planejamento e otimização de rotas para transporte público. Pedimos que você leia atentamente estes Termos e Condições de Uso, pois eles definem as regras e diretrizes que regem a utilização deste aplicativo."),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("1. Aceitação dos Termos", style: subtitle),
              ),
              Text(
                  style: defaultText,
                  "  Ao acessar ou utilizar o aplicativo Boa Rota, você concorda em cumprir estes Termos e Condições, bem como qualquer legislação e regulamentação aplicável. Se você não concordar com estes termos, por favor, não utilize o aplicativo."),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("2. Fins Não Lucrativos", style: subtitle),
              ),
              Text(
                style: defaultText,
                "  O aplicativo Boa Rota é um projeto de TCC e não tem fins lucrativos. Ele é desenvolvido com o propósito de oferecer um serviço gratuito aos usuários e não visa a obtenção de lucro. Todos os recursos e funcionalidades disponíveis no aplicativo são fornecidos sem custos.",
              ),
              const SizedBox(height: 10),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("3. Uso do Aplicativo", style: subtitle)),
              Text(
                style: defaultText,
                "  Você concorda em utilizar o aplicativo Boa Rota de acordo com as finalidades estabelecidas, ou seja, para o planejamento e otimização de rotas para transporte público.",
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("4. Responsabilidades", style: subtitle),
              ),
              Text(
                style: defaultText,
                """  O aplicativo Boa Rota é fornecido no estado em que se encontra e não fazemos representações ou garantias de qualquer tipo em relação à precisão ou disponibilidade das informações. 
  Você é responsável por quaisquer custos associados à utilização dos serviços, como despesas com conexão à internet ou dados móveis. O aplicativo Boa Rota não se responsabiliza por eventuais alterações em horários de transporte público ou problemas no fornecimento de informações pelas autoridades competentes.""",
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("5. Privacidade", style: subtitle),
              ),
              Text(
                style: defaultText,
                "  Nossa Política de Privacidade descreve como coletamos, usamos e protegemos os seus dados pessoais. Certifique-se de ler e compreender nossa Política de Privacidade, que faz parte destes Termos e Condições.",
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("6. Alterações nos Termos e Condições",
                    style: subtitle),
              ),
              Text(
                  style: defaultText,
                  "  Reservamo-nos o direito de fazer alterações nestes Termos e Condições a qualquer momento, mediante notificação prévia. As alterações entrarão em vigor na data especificada na notificação. Continuar a usar o aplicativo após tais alterações implica na sua aceitação das mesmas."),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("7. Contato", style: subtitle),
              ),
              Text(
                style: defaultText,
                "  Se você tiver alguma dúvida ou preocupação sobre estes Termos e Condições ou o uso do aplicativo Boa Rota, entre em contato conosco através do seguinte endereço de e-mail: appboarota@gmail.com.",
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
