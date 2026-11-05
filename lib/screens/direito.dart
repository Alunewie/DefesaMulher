import 'package:flutter/material.dart';
import 'package:defesa_mulher_app/custom_widgets/custom_scaffold.dart';
import 'package:defesa_mulher_app/custom_widgets/section_card.dart';

class Direito extends StatelessWidget {
  const Direito({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      titulo: 'Direitos e Proteção',
      categoriaIcone: Icons.shield_outlined,
      proximaRota: '/tipo_violencia',
      conteudos: [
        SectionCard(
          itens: [
            SectionItem(
              titulo: 'Lei Maria da Penha',
              conteudo:
                  'A Lei Maria da Penha (Lei nº 11.340/2006) protege as mulheres contra as violências física, psicológica, sexual, patrimonial, moral e vicária.\n\n'
                  'A proteção prevista pela Lei Maria da Penha vai além do registro de uma ocorrência policial. Dependendo da situação, a mulher pode precisar de atendimento psicológico e de saúde, orientação jurídica, assistência social, proteção policial ou acolhimento temporário.',
            ),
            SectionItem(
              titulo: 'A quem se aplica a Lei',
              conteudo:
                  'A Lei Maria da Penha foi criada para prevenir e combater a violência doméstica e familiar contra a mulher, independentemente de orientação sexual ou identidade de gênero (abrangendo mulheres heteroafetivas, homoafetivas e mulheres trans).\n\n'
                  'A lei contempla situações de violência no âmbito da unidade doméstica, da família ou de qualquer relação íntima de afeto, mesmo quando não há coabitação. O agressor não precisa necessariamente residir sob o mesmo teto.',
            ),
            SectionItem(
              titulo: 'Medidas Protetivas de Urgência (MPU)',
              conteudo:
                  'A Medida Protetiva de Urgência é uma determinação judicial prioritária criada para proteger mulheres em perigo imediato, devendo o juiz analisar o pedido em até 48 horas.\n\n'
                  'Entre as medidas que podem ser decretadas estão:\n'
                  '• Afastamento imediato do agressor do lar ou local de convivência;\n'
                  '• Proibição de aproximação e de qualquer forma de contato;\n'
                  '• Restrição ou suspensão de posse e porte de armas de fogo;\n'
                  '• Restrição de visitas e fixação de alimentos provisórios para os filhos;\n'
                  '• Monitoração eletrônica (tornozeleira) e prisão preventiva em caso de descumprimento.',
            ),
            SectionItem(
              titulo: 'Benefícios e Apoio Social',
              conteudo:
                  'A mulher que vivencia violência doméstica tem direito a:\n'
                  '• Manutenção do vínculo empregatício por até 6 meses mediante afastamento judicial;\n'
                  '• Benefício previdenciário do INSS para seguradas afastadas do trabalho por ordem judicial;\n'
                  '• Auxílio-aluguel e encaminhamento socioassistencial nos municípios conveniados;\n'
                  '• Assistência jurídica integral e gratuita assegurada pela Defensoria Pública (NUDEM).',
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
