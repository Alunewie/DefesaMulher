import 'package:flutter/material.dart';
import 'package:defesa_mulher_app/custom_widgets/custom_scaffold.dart';
import 'package:defesa_mulher_app/custom_widgets/section_card.dart';

class Prevencao extends StatelessWidget {
  const Prevencao({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      titulo: 'Prevenção e Orientação',
      categoriaIcone: Icons.chat_bubble_outline,
      conteudos: [
        SectionCard(
          itens: [
            SectionItem(
              titulo: 'O Ciclo de Violência',
              conteudo:
                  'É uma forma muito comum da violência se manifestar seja entre casais héteros e homoafetivos.\n\n'
                  'Compreender o ciclo de violência ajuda a entender a dinâmica das relações violentas e a dificuldade da mulher sair dessa situação.\n\n'
                  '• Fase 1 - Aumento da Tensão: raivas acumuladas, insultos, crises de ciúme infundadas e ameaças verbais. O agressor demonstra irritação constante;\n'
                  '• Fase 2 - Explosão da Violência: descontrole agudo manifestado em agressões físicas, verbais, psicológicas ou sexuais;\n'
                  '• Fase 3 - Lua de Mel (Reconciliação): o agressor pede desculpas, demonstra arrependimento, promete mudanças e carinho até que a tensão recomece.',
            ),
            SectionItem(
              titulo: 'Sinais de Alerta no Relacionamento',
              conteudo:
                  'A violência quase nunca começa de forma súbita; ela surge gradualmente sob o disfarce de zelo ou ciúme. Fique atenta aos sinais de escalada:\n\n'
                  '• Atenção: piadas depreciativas sobre sua capacidade ou aparência, exigência de senhas de celular e redes sociais, controle sobre suas roupas e amizades;\n'
                  '• Reaja: manipulação psicológica, culpabilização da vítima pelas atitudes do agressor, controle do seu dinheiro e isolamento de familiares;\n'
                  '• Procure Ajuda: ameaças explícitas ou veladas de morte, empurrões, confinamento e coerção para relações não desejadas.',
            ),
            SectionItem(
              titulo: 'Plano Pessoal de Segurança',
              conteudo:
                  'Se você vive em um ambiente de vulnerabilidade ou planeja romper a relação com segurança:\n\n'
                  '• Kit de Emergência: guarde com pessoa de confiança uma bolsa discreta com documentos (RG, CPF, certidões dos filhos), chaves extras e medicamentos;\n'
                  '• Palavra-Código: combine um código, frase inocente ou emoji secreto com vizinhos e amigas para que acionem o 190 ao receberem;\n'
                  '• Rotas de Saída: identifique saídas e evite locais sem escape fácil ou com utensílios perigosos (como cozinha) durante discussões.',
            ),
            SectionItem(
              titulo: 'Como Apoiar uma Vítima de Violência',
              conteudo:
                  'Se você tem uma amiga, vizinha ou familiar nessa situação:\n\n'
                  '• Escuta ativa e acolhedora: não julgue, não pergunte "por que não sai de casa?" e nunca culpe a mulher pelas atitudes do agressor;\n'
                  '• Ajuda prática: ofereça sua casa como ponto de apoio seguro, guarde documentos e pertences dela se necessário;\n'
                  '• Não confronte o agressor diretamente: o confronto por terceiros pode agravar o risco de retaliação contra a vítima;\n'
                  '• Em emergências: ligue imediatamente para a Polícia Militar no 190 ou denuncie pelo Ligue 180.',
            ),
          ],
          fonte: 'Fonte: ONG Recomeçar',
          linkSaibaMais:
              'https://ongrecomecar.org.br/2024/01/31/apoiando-vitimas-de-violencia-domestica-um-guia-para-agir-com-cuidado-e-efetividade/',
        ),
      ],
    );
  }
}
