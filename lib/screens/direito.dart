import 'package:defesa_mulher_app/custom_widgets/bloco_texto.dart';
import 'package:defesa_mulher_app/custom_widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

class Direito extends StatelessWidget {
  const Direito({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      titulo: 'Direitos e Proteção',
      ocultarBotaoSobre: true,
      conteudos: [
        BlocoTexto(
          titulo: '1) MEDIDAS PROTETIVAS DE URGÊNCIA (MPU)',
          conteudo:
              'A Lei Maria da Penha (Lei nº 11.340/2006) garante à mulher em situação de risco a concessão de Medidas Protetivas de Urgência. O pedido pode ser feito diretamente na Delegacia de Polícia, na Defensoria Pública, no Ministério Público ou pelo sistema judiciário, sem a necessidade de prévio boletim de ocorrência, inquérito policial ou processo em andamento.\n\n'
              'O juiz deve analisar o pedido com prioridade absoluta no prazo legal de 48 horas. Entre as principais determinações contra o agressor estão:\n\n'
              '• Afastamento imediato do lar ou local de convivência com a mulher;\n\n'
              '• Proibição de aproximação da vítima, de seus familiares e testemunhas, com limite mínimo de distância;\n\n'
              '• Proibição de qualquer contato (por ligação, WhatsApp, redes sociais, recados ou terceiros);\n\n'
              '• Restrição ou suspensão de posse e porte de armas de fogo;\n\n'
              '• Monitoramento eletrônico por tornozeleira, quando aplicável;\n\n'
              '• Restrição do direito de visitas aos filhos menores.\n\n'
              'O descumprimento de medida protetiva é crime autônomo (Art. 24-A), punido com pena de detenção de 3 meses a 2 anos, cabendo prisão preventiva imediata.',
        ),
        BlocoTexto(
          titulo: '2) ASSISTÊNCIA JURÍDICA GRATUITA (DEFENSORIA PÚBLICA)',
          conteudo:
              'Toda mulher em situação de violência doméstica e familiar tem direito a atendimento jurídico gratuito, integral e especializado prestado pela Defensoria Pública do Estado, especialmente por meio do NUDEM (Núcleo Especializado de Promoção e Defesa dos Direitos das Mulheres).\n\n'
              'A Defensoria atua não apenas no acompanhamento do pedido de medidas protetivas, mas também nas demandas essenciais de Direito de Família, tais como:\n\n'
              '• Ação de divórcio ou dissolução de união estável;\n\n'
              '• Pedido de partilha de bens do casal;\n\n'
              '• Definição da guarda unilateral dos filhos e regime de convivência;\n\n'
              '• Fixação de alimentos provisionais ou provisórios para o sustento dos dependentes;\n\n'
              '• Acompanhamento das ações penais contra o agressor.',
        ),
        BlocoTexto(
          titulo: '3) DIREITOS TRABALHISTAS E PREVIDENCIÁRIOS',
          conteudo:
              'A mulher que precisa se afastar de suas atividades profissionais em razão da violência não deve sofrer prejuízos em sua renda ou carreira. A legislação prevê proteções fundamentais:\n\n'
              '• Manutenção do Vínculo Empregatício: o juiz pode determinar a manutenção do vínculo de trabalho por até 6 meses quando for necessário o afastamento da vítima para preservar sua integridade física ou psicológica (Art. 9º, § 2º, II da Lei Maria da Penha);\n\n'
              '• Benefício de Afastamento Protetivo: a mulher segurada da Previdência Social (RGPS) afastada do trabalho por ordem judicial tem direito ao pagamento de benefício previdenciário temporário;\n\n'
              '• Transferência de Local de Trabalho: caso a trabalhadora pertença a quadro de servidora pública ou atue em empresa com filiais, tem direito à transferência prioritária de lotação para preservar seu sigilo e segurança.',
        ),
        BlocoTexto(
          titulo: '4) DIREITO À MORADIA E PROGRAMAS SOCIAIS',
          conteudo:
              'A falta de recursos financeiros ou de um teto não pode ser obstáculo para a mulher romper o ciclo de violência. O Estado disponibiliza mecanismos de suporte habitacional e financeiro:\n\n'
              '• Auxílio-Aluguel: a Lei nº 14.674/2023 inseriu na Lei Maria da Penha a concessão de benefício de auxílio-aluguel para mulheres em vulnerabilidade social e econômica afastadas do lar, com valor e duração definidos pelo juiz conforme a situação;\n\n'
              '• Serviços de Acolhimento e Casas-Abrigo: para situações de risco grave ou risco iminente de morte, a rede oferece abrigamento institucional em locais com endereço sigiloso, acolhendo a mulher e seus filhos menores;\n\n'
              '• Prioridade em Programas Habitacionais: a legislação assegura prioridade na inscrição e aquisição de imóveis em programas habitacionais de interesse social (como o Minha Casa, Minha Vida);\n\n'
              '• Benefícios da Assistência Social: inscrição e atualização prioritária no CadÚnico e acesso a programas socioassistenciais como o Bolsa Família e benefícios eventuais municipais pelo CRAS/CREAS.',
        ),
        BlocoTexto(
          titulo: '5) ATENDIMENTO INTEGRAL E HUMANIZADO NA SAÚDE (SUS)',
          conteudo:
              'A rede pública de saúde (SUS) garante atendimento médico, psicológico, odontológico e farmacêutico obrigatório, integral, gratuito e sigiloso para mulheres em situação de violência:\n\n'
              '• Profilaxia Pós-Exposição (PEP): atendimento de emergência para casos de violência sexual, com fornecimento gratuito de coquetel contra o HIV, profilaxia para Hepatite B e outras ISTs, além da pílula de contracepção de emergência;\n\n'
              '• Notificação Compulsória e Coleta de Provas: unidades de saúde realizam a notificação dos casos e o acolhimento multiprofissional com equipe médica, assistente social e psicologia, além da preservação de vestígios para perícia;\n\n'
              '• Cirurgia Plástica Reparadora (Lei nº 13.239/2015): direito à realização gratuita pelo SUS de cirurgias plásticas reparadoras de lesões ou sequelas decorrentes de agressões sofridas no âmbito doméstico e familiar.',
        ),
        BlocoTexto(
          titulo: '6) GUARDA DOS FILHOS E PENSÃO ALIMENTÍCIA',
          conteudo:
              'A segurança e a subsistência dos dependentes são prioridades absolutas na aplicação da Lei Maria da Penha:\n\n'
              '• Alimentos Provisórios: o juiz pode fixar pensão alimentícia de urgência já na análise inicial das medidas protetivas, garantindo os recursos necessários para os cuidados imediatos com os filhos;\n\n'
              '• Guarda Unilateral: a legislação brasileira (Lei nº 14.713/2023) estabelece que a guarda compartilhada não deve ser aplicada quando houver elementos que configurem violência doméstica ou familiar envolvendo os genitores ou os filhos;\n\n'
              '• Restrição de Visitas: o direito de visitas do agressor aos filhos pode ser suspenso ou supervisionado judicialmente para evitar que as crianças sejam utilizadas como instrumento de intimidação contra a mulher.',
        ),
      ],
    );
  }
}
