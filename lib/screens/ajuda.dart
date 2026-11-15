import 'package:flutter/material.dart';
import 'package:defesa_mulher_app/custom_widgets/custom_scaffold.dart';
import 'package:defesa_mulher_app/custom_widgets/section_card.dart';

class Ajuda extends StatelessWidget {
  const Ajuda({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      titulo: 'Onde Buscar Ajuda',
      icone: Icons.location_on,
      proximaRota: '/direito',
      conteudos: [
        SectionCard(
          itens: [
            SectionItem(
              titulo: 'Central de Atendimento à Mulher Ligue 180',
              conteudo:
                  'É um serviço público e gratuito de acolhimento, orientação e registro de denúncias de violência contra as mulheres. Funciona 24 horas por dia, todos os dias da semana.\n\n'
                  'O atendimento pode ser acessado pelos seguintes canais:\n\n'
                  '• Telefone: Ligue 180;\n'
                  '• WhatsApp: (61) 9610-0180;\n'
                  '• E-mail: ligue180@mulheres.gov.br;\n'
                  '• Videochamada em Língua Brasileira de Sinais (Libras).\n\n'
                  'A central fornece informações sobre os direitos das mulheres e os locais de atendimento mais próximos, como delegacias, defensorias e centros de referência.',
            ),
            SectionItem(
              titulo: 'Polícia Militar – 190',
              conteudo:
                  'Indicada para situações de emergência e flagrante, quando a violência está acontecendo ou acabou de acontecer, ou quando há risco imediato à vida e à integridade física da mulher ou de sua família.\n\n'
                  'A ligação é gratuita e pode ser feita de qualquer telefone celular ou fixo a qualquer momento.',
            ),
            SectionItem(
              titulo: 'Delegacia de Polícia / DEAM',
              conteudo:
                  'Unidade policial responsável por registrar o Boletim de Ocorrência (BO), dar início à investigação dos fatos e encaminhar ao Poder Judiciário o pedido de Medida Protetiva de Urgência (MPU).\n\n'
                  'Nas cidades onde não houver Delegacia da Mulher (DEAM), a mulher pode procurar qualquer Delegacia de Polícia Comum ou realizar o registro online através da Delegacia Eletrônica.',
            ),
            SectionItem(
              titulo: 'CREAS e Rede de Apoio Social',
              conteudo:
                  'O Centro de Referência Especializado de Assistência Social (CREAS) oferece apoio psicossocial, orientação jurídica básica e acompanhamento continuado para mulheres e famílias vítimas de violações de direitos e violência doméstica.',
            ),
            SectionItem(
              titulo: 'Onde Ir em Situações de Risco',
              conteudo:
                  'Mulheres que vivenciam risco iminente ou grave ameaça de morte podem ser acolhidas em Casas-Abrigo com endereços confidenciais e sigilosos, acolhendo a mulher acompanhada de seus filhos menores.',
            ),
          ],
          fonte: 'Fonte: Agência Gov',
          linkSaibaMais:
              'https://agenciagov.ebc.com.br/noticias/202608/especial-lei-maria-da-penha-saiba-onde-buscar-ajuda-em-casos-de-violencia-domestica-e-familiar-contra-mulheres',
        ),
      ],
    );
  }
}
