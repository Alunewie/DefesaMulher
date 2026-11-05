import 'package:flutter/material.dart';

class ViolenciaItem {
  final String id;
  final String titulo;
  final IconData icone;
  final String definicao;
  final List<String> exemplos;
  final String fonte;
  final String link;

  const ViolenciaItem({
    required this.id,
    required this.titulo,
    required this.icone,
    required this.definicao,
    required this.exemplos,
    required this.fonte,
    required this.link,
  });

  static const List<ViolenciaItem> lista = [
    ViolenciaItem(
      id: 'fisica',
      titulo: 'Violência Física',
      icone: Icons.front_hand,
      definicao:
          'Entendida como qualquer conduta que ofenda a integridade ou saúde corporal da mulher.',
      exemplos: [
        'Espancamento',
        'Atirar objetos, sacudir e apertar os braços',
        'Estrangulamento ou sufocamento',
        'Lesões com objetos cortantes ou perfurantes',
        'Ferimentos causados por queimaduras ou armas de fogo',
        'Tortura',
      ],
      fonte: 'Fonte: Instituto Maria da Penha',
      link:
          'https://www.institutomariadapenha.org.br/lei-11340/tipos-de-violencia.html',
    ),
    ViolenciaItem(
      id: 'psicologica',
      titulo: 'Violência Psicológica',
      icone: Icons.sentiment_dissatisfied,
      definicao:
          'É considerada qualquer conduta que: cause dano emocional e diminuição da autoestima; prejudique e perturbe o pleno desenvolvimento da mulher; ou vise degradar ou controlar suas ações, comportamentos, crenças e decisões.',
      exemplos: [
        'Ameaças',
        'Constrangimento',
        'Humilhação',
        'Manipulação',
        'Isolamento (proibir de estudar e viajar ou de falar com amigos e parentes)',
        'Vigilância constante',
        'Perseguição contumaz',
        'Insultos',
        'Chantagem',
        'Exploração',
        'Limitação do direito de ir e vir',
        'Ridicularização',
        'Tirar a liberdade de crença',
        'Distorcer e omitir fatos para deixar a mulher em dúvida sobre a sua memória e sanidade (gaslighting)',
      ],
      fonte: 'Fonte: Instituto Maria da Penha',
      link:
          'https://www.institutomariadapenha.org.br/lei-11340/tipos-de-violencia.html',
    ),
    ViolenciaItem(
      id: 'sexual',
      titulo: 'Violência Sexual',
      icone: Icons.person,
      definicao:
          'Trata-se de qualquer conduta que constranja a presenciar, a manter ou a participar de relação sexual não desejada mediante intimidação, ameaça, coação ou uso da força.',
      exemplos: [
        'Estupro',
        'Obrigar a mulher a fazer atos sexuais que causam desconforto ou repulsa',
        'Impedir o uso de métodos contraceptivos ou forçar a mulher a abortar',
        'Forçar matrimônio, gravidez ou prostituição por meio de coação, chantagem, suborno ou manipulação',
        'Limitar ou anular o exercício dos direitos sexuais e reprodutivos da mulher',
      ],
      fonte: 'Fonte: Instituto Maria da Penha',
      link:
          'https://www.institutomariadapenha.org.br/lei-11340/tipos-de-violencia.html',
    ),
    ViolenciaItem(
      id: 'moral',
      titulo: 'Violência Moral',
      icone: Icons.chat_bubble_outline,
      definicao:
          'É considerada qualquer conduta que configure calúnia, difamação ou injúria.',
      exemplos: [
        'Acusar a mulher de traição',
        'Emitir juízos morais sobre a conduta',
        'Fazer críticas mentirosas',
        'Expor a vida íntima',
        'Rebaixar a mulher por meio de xingamentos que incidem sobre a sua índole',
        'Desvalorizar a vítima pelo seu modo de se vestir',
      ],
      fonte: 'Fonte: Instituto Maria da Penha',
      link:
          'https://www.institutomariadapenha.org.br/lei-11340/tipos-de-violencia.html',
    ),
    ViolenciaItem(
      id: 'patrimonial',
      titulo: 'Violência Patrimonial',
      icone: Icons.shopping_bag_outlined,
      definicao:
          'Entendida como qualquer conduta que configure retenção, subtração, destruição parcial ou total de seus objetos, instrumentos de trabalho, documentos pessoais, bens, valores e direitos ou recursos econômicos, incluindo os destinados a satisfazer suas necessidades.',
      exemplos: [
        'Controlar o dinheiro',
        'Deixar de pagar pensão alimentícia',
        'Destruição de documentos pessoais',
        'Furto, extorsão ou dano',
        'Estelionato',
        'Privar de bens, valores ou recursos econômicos',
      ],
      fonte: 'Fonte: Instituto Maria da Penha',
      link:
          'https://www.institutomariadapenha.org.br/lei-11340/tipos-de-violencia.html',
    ),
    ViolenciaItem(
      id: 'vicaria',
      titulo: 'Violência Vicária',
      icone: Icons.home_outlined,
      definicao:
          'A violência vicária ocorre quando o agressor pratica violência contra filhos, familiares, dependentes ou outras pessoas próximas com o objetivo de causar sofrimento, punir ou controlar a mulher. Essas formas de violência podem ocorrer de maneira isolada ou combinada e não dependem da existência de agressões ou lesões aparentes para serem reconhecidas.',
      exemplos: [
        'Ameaçar retirar a guarda dos filhos como forma de coação',
        'Maltratar os filhos ou animais de estimação para atingir a mãe',
        'Manipulação e alienação parental contra a mulher',
        'Descumprimento deliberado de visitas e obrigações para gerar angústia',
      ],
      fonte: 'Fonte: Agência Gov',
      link:
          'https://agenciagov.ebc.com.br/noticias/202608/especial-lei-maria-da-penha-saiba-onde-buscar-ajuda-em-casos-de-violencia-domestica-e-familiar-contra-mulheres',
    ),
  ];
}
