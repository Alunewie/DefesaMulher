import 'package:defesa_mulher_app/custom_widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

class Ajuda extends StatelessWidget {
  const Ajuda({super.key});


  @override
  Widget build(BuildContext context) {
    return CustomScaffold(conteudos: [
       Container(
         padding: const EdgeInsets.all(15),
         height: 456,
         width: 362,
         decoration: const BoxDecoration(
           color: Color.fromRGBO(226, 221, 232, 1),
           borderRadius: BorderRadius.all(Radius.circular(20))
         ),
         child: SingleChildScrollView(
           child: Column(
             children: [
               Text(
                 '1) A QUEM SE APLICA A LEI MARIA DA PENHA (MEDIDA PROTETIVA)',
                 style: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.w500,
                 ),
               ),
               Text(
                 'A Lei Maria da Penha (Lei nº 11.340/2006) foi criada para prevenir e combater a violência doméstica e familiar contra a mulher. Sua proteção pode abranger mulheres independentemente da orientação sexual, incluindo mulheres em relações homoafetivas e mulheres trans, conforme a legislação e a interpretação jurídica aplicável. A lei contempla situações de violência ocorridas no âmbito da unidade doméstica, da família ou de relações íntimas de afeto, mesmo quando não há coabitação. Entre os possíveis agressores estão maridos, esposas, companheiros(as), ex-companheiros(as), namorados(as), ex-namorados(as) e familiares, como pais, filhos, irmãos, padrastos, madrastas e outros integrantes das relações abrangidas pela lei. A proteção não depende necessariamente de o agressor morar com a mulher.',
                 style: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.w400,
                 ),
               ),

               SizedBox(height: 20),

               Text(
                 '2) O CICLO DE VIOLÊNCIA',
                 style: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.w500,
                 ),
               ),
               Text(
                 'O ciclo de violência é uma forma recorrente de manifestação da violência em muitas relações afetivas, incluindo relações heteroafetivas e homoafetivas. Compreender essa dinâmica ajuda a entender por que pode ser difícil romper uma relação violenta. Tradicionalmente, o ciclo é descrito em três fases: aumento da tensão, episódio de violência e reconciliação, também chamada de fase da lua de mel.\n\n'
                     'Na primeira fase, a tensão aumenta progressivamente. O agressor pode apresentar irritação, ciúmes excessivos, insultos, humilhações, ameaças e tentativas de controlar o comportamento da mulher. Ela pode tentar evitar conflitos e modificar suas atitudes por medo de novas agressões.\n\n'
                     'Na segunda fase, ocorre o episódio de violência, que pode ser física, psicológica, sexual, moral ou patrimonial. O agressor pode perder o controle ou utilizar deliberadamente a violência para intimidar e controlar a vítima.\n\n'
                     'Na terceira fase, o agressor pode pedir perdão, demonstrar carinho, prometer mudanças ou minimizar o que aconteceu. A mulher pode acreditar que a situação melhorará e que a violência não voltará a ocorrer.\n\n'
                     'Esse ciclo pode se repetir, com episódios cada vez mais graves ou intervalos menores entre as agressões. Entretanto, nem toda situação de violência segue esse padrão. A responsabilidade pela violência é sempre de quem a pratica, e a mulher não deve ser culpabilizada pela dificuldade de sair da relação.',
                 style: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.w400,
                 ),
               ),

               SizedBox(height: 20),

               Text(
                 '3) POSSO SOLICITAR MEDIDA PROTETIVA DE URGÊNCIA?',
                 style: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.w500,
                 ),
               ),
               Text(
                 'O que é a Medida Protetiva de Urgência (MPU)?\n\n'
                     'A Medida Protetiva de Urgência é um instrumento previsto na Lei Maria da Penha para proteger mulheres em situação de violência doméstica e familiar, prevenindo novas agressões e reduzindo os riscos à sua integridade física, psicológica, sexual, moral e patrimonial.\n\n'
                     'A medida pode ser solicitada por meio dos canais competentes, como a Delegacia de Polícia, a Delegacia de Defesa da Mulher, quando disponível, e o sistema de Justiça. A legislação permite a concessão da medida independentemente da existência de boletim de ocorrência, inquérito policial ou ação judicial, observados os requisitos legais. O pedido deve ser analisado com urgência, e a proteção pode ser mantida enquanto persistir a situação de risco.\n\n'
                     'Entre as medidas que podem ser determinadas estão:\n\n'
                     '• Afastamento do agressor do lar ou local de convivência;\n\n'
                     '• Restrição ou suspensão da posse e do porte de armas, conforme as condições legais;\n\n'
                     '• Proibição de aproximação da mulher, de seus familiares e de testemunhas, com fixação de distância mínima;\n\n'
                     '• Proibição de contato por telefone, mensagens, redes sociais ou outros meios de comunicação;\n\n'
                     '• Proibição de frequentar determinados lugares para preservar a segurança da mulher;\n\n'
                     '• Restrição ou suspensão de visitas aos filhos menores, conforme decisão judicial;\n\n'
                     '• Fixação de alimentos provisionais ou provisórios, quando cabível;\n\n'
                     '• Encaminhamento da mulher e de seus dependentes a serviços de proteção e atendimento;\n\n'
                     '• Participação do agressor em programas de recuperação e reeducação e acompanhamento psicossocial;\n\n'
                     '• Monitoração eletrônica do agressor, quando determinada conforme a legislação aplicável.\n\n'
                     'Em situações que atendam aos requisitos legais, também poderá ser decretada a prisão preventiva do agressor. O descumprimento de uma medida protetiva pode constituir crime. Para orientações e atendimento, a mulher pode procurar a rede de proteção de seu município. Em caso de emergência, deve acionar a Polícia Militar pelo número 190.',
                 style: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.w400,
                 ),
               ),

               SizedBox(height: 20),

               Text(
                 '4) NÃO TENHO PARA ONDE IR. O QUE POSSO FAZER PARA SAIR DE CASA?',
                 style: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.w500,
                 ),
               ),
               Text(
                 'Mulheres que vivenciam violência doméstica e familiar e não possuem um local seguro para ficar podem procurar os serviços públicos de assistência e proteção. Em situações de risco grave, podem ser encaminhadas a abrigos sigilosos ou serviços de acolhimento institucional, conforme a disponibilidade e os critérios de atendimento de cada município.\n\n'
                     'Esses serviços oferecem um espaço protegido e podem acolher a mulher acompanhada de seus filhos e dependentes, conforme as regras do serviço. O endereço costuma ser mantido em sigilo para preservar a segurança das pessoas acolhidas.\n\n'
                     'A mulher também pode buscar atendimento no Centro de Referência de Atendimento à Mulher, no CREAS, na Secretaria Municipal de Assistência Social, na Delegacia de Polícia, na Defensoria Pública ou no Ministério Público. Esses órgãos podem orientar sobre as medidas de proteção disponíveis e encaminhar a mulher aos serviços adequados.\n\n'
                     'Dependendo da legislação aplicável e das condições do caso, podem existir outras alternativas, como auxílio-aluguel, benefícios eventuais da assistência social, encaminhamento para moradia temporária e medidas judiciais relacionadas à segurança e à manutenção dos filhos.\n\n'
                     'É importante verificar quais serviços estão disponíveis na cidade onde a mulher reside. Ela não precisa enfrentar a situação sozinha e não deve permanecer em um ambiente violento por falta de recursos financeiros ou de moradia.',
                 style: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.w400,
                 ),
               ),

               SizedBox(height: 20),

               Text(
                 '5) BENEFÍCIOS FINANCEIROS E DIREITOS SOCIAIS DO GOVERNO',
                 style: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.w500,
                 ),
               ),
               Text(
                 'Mulheres em situação de violência doméstica podem ter acesso a diferentes direitos, benefícios e serviços públicos, conforme sua situação social, profissional, familiar e previdenciária.\n\n'
                     'Entre as possibilidades que devem ser pesquisadas estão:\n\n'
                     '• Benefício de Afastamento Protetivo – Lei Maria da Penha: em outubro de 2026, foi regulamentado o pagamento de benefício para seguradas do Regime Geral de Previdência Social afastadas do trabalho por determinação judicial, nos termos da legislação. O pagamento pode ocorrer por até seis meses, conforme a decisão judicial e as regras aplicáveis. A forma de pagamento varia conforme a categoria da segurada.\n\n'
                     '• Auxílio-aluguel: pode ser concedido a mulheres em situação de violência doméstica que atendam aos critérios legais e sociais aplicáveis, observadas a regulamentação e a disponibilidade local.\n\n'
                     '• Benefícios da assistência social: podem incluir benefícios eventuais e encaminhamentos para serviços socioassistenciais, conforme a avaliação e as regras do município.\n\n'
                     '• Programas de transferência de renda: a mulher pode verificar sua elegibilidade para programas sociais, como o Bolsa Família, conforme os critérios vigentes e a situação cadastral da família.\n\n'
                     '• Assistência jurídica gratuita: a Defensoria Pública pode oferecer orientação e atendimento jurídico, conforme os critérios institucionais aplicáveis.\n\n'
                     '• Proteção trabalhista e previdenciária: devem ser pesquisados os direitos relacionados ao afastamento do trabalho, à manutenção do vínculo empregatício e aos benefícios previdenciários eventualmente aplicáveis.\n\n'
                     '• Pensão alimentícia e proteção dos filhos: podem ser solicitadas medidas judiciais relacionadas aos alimentos, à guarda, às visitas e à segurança dos dependentes.\n\n'
                     'A existência de um benefício não significa que todas as mulheres terão direito automático a ele. Cada programa possui requisitos próprios, e algumas medidas dependem de decisão judicial ou de regulamentação local. Por isso, é fundamental consultar fontes oficiais e atualizadas.',
                 style: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.w400,
                 ),
               ),
             ],
           )
         )
       )
    ], titulo: 'Onde Buscar Ajuda?', ocultarBotaoSobre: true);
  }
}
