import 'package:defesa_mulher_app/custom_widgets/bloco_texto.dart';
import 'package:defesa_mulher_app/custom_widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

class TipoViolencia extends StatelessWidget {
  const TipoViolencia({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      titulo: 'Tipos de Violência',
      ocultarBotaoSobre: true,
      conteudos: [
        BlocoTexto(
          titulo: '1) VIOLÊNCIA FÍSICA (ART. 7º, INCISO I DA LEI MARIA DA PENHA)',
          conteudo:
              'Entendida como qualquer conduta que ofenda a integridade física ou a saúde corporal da mulher. É a forma mais visível de agressão, mas muitas vezes se manifesta de maneiras sutis antes de episódios graves.\n\n'
              'Exemplos frequentes:\n\n'
              '• Bater, desferir tapas, socos, pontapés ou empurrões;\n\n'
              '• Sacudir, apertar os braços deixando hematomas, beliscar ou puxar cabelos;\n\n'
              '• Arremessar objetos em direção à mulher ou quebrar itens ao seu redor para intimidá-la;\n\n'
              '• Causar queimaduras, cortes, perfurações com objetos ou lesões;\n\n'
              '• Sufocamento, tentativas de estrangulamento ou imobilização à força;\n\n'
              'A violência física não exige que fiquem marcas aparentes ou hematomas para ser reconhecida como crime perante a lei.',
        ),
        BlocoTexto(
          titulo: '2) VIOLÊNCIA PSICOLÓGICA (ART. 7º, INCISO II E ART. 147-B DO CP)',
          conteudo:
              'Qualquer conduta que cause dano emocional, diminuição da autoestima, perturbe o pleno desenvolvimento da mulher ou que vise degradar e controlar suas ações, comportamentos, crenças e decisões. Desde 2021, a violência psicológica é crime específico tipificado no Artigo 147-B do Código Penal.\n\n'
              'Exemplos frequentes:\n\n'
              '• Ameaças constantes à mulher, a seus filhos ou a seus animais de estimação;\n\n'
              '• Humilhações públicas ou privadas, insultos e desvalorização constante de suas capacidades;\n\n'
              '• Chantagem emocional e culpabilização da vítima pelas atitudes do agressor;\n\n'
              '• Isolamento forçado: proibir de visitar familiares, falar com amigos ou frequentar locais sociais;\n\n'
              '• Vigilância constante, perseguição contumaz (stalking) e controle excessivo de horários;\n\n'
              '• Gaslighting: manipulação psicológica em que o agressor distorce fatos para fazer a mulher duvidar de sua memória, sanidade ou percepção da realidade.',
        ),
        BlocoTexto(
          titulo: '3) VIOLÊNCIA SEXUAL (ART. 7º, INCISO III)',
          conteudo:
              'Qualquer conduta que constranja a mulher a presenciar, a manter ou a participar de relação sexual não desejada, mediante intimidação, ameaça, coação ou uso da força. Abrange também qualquer limitação ou anulação de seus direitos sexuais e reprodutivos.\n\n'
              'Exemplos frequentes:\n\n'
              '• Estupro (inclusive no âmbito do casamento, união estável ou namoro, o chamado estupro conjugal);\n\n'
              '• Obrigar a mulher a realizar atos sexuais que lhe causam repulsa, dor ou desconforto;\n\n'
              '• Impedir o uso de métodos contraceptivos (esconder a pílula, recusar o uso de preservativo ou retirá-lo durante o ato sem consentimento - stealthing);\n\n'
              '• Forçar a gravidez indesejada ou coagir a mulher ao aborto;\n\n'
              '• Forçar a prostituição ou a exposição sexual da vítima.',
        ),
        BlocoTexto(
          titulo: '4) VIOLÊNCIA PATRIMONIAL (ART. 7º, INCISO IV)',
          conteudo:
              'Qualquer conduta que configure retenção, subtração, destruição parcial ou total de seus objetos, instrumentos de trabalho, documentos pessoais, bens, valores e direitos ou recursos econômicos, incluindo os destinados a satisfazer suas necessidades.\n\n'
              'Exemplos frequentes:\n\n'
              '• Confiscar, controlar ou reter o salário e a renda obtida pela mulher;\n\n'
              '• Destruir pertences pessoais, roupas, fotos ou instrumentos essenciais para seu trabalho (computador, ferramentas);\n\n'
              '• Esconder ou reter documentos indispensáveis (RG, CPF, certidões de nascimento, passaporte ou carteira de trabalho);\n\n'
              '• Negar dinheiro para alimentação, medicamentos e sustento básico da casa e dos filhos;\n\n'
              '• Contrair empréstimos ou abrir dívidas e cartões no nome da mulher sem a sua autorização;',
        ),
        BlocoTexto(
          titulo: '5) VIOLÊNCIA MORAL (ART. 7º, INCISO V)',
          conteudo:
              'Qualquer conduta que configure crimes contra a honra da mulher, especificamente calúnia, difamação ou injúria perante o Código Penal.\n\n'
              'Exemplos frequentes:\n\n'
              '• Calúnia: acusar falsamente a mulher de ter praticado um crime que ela não cometeu;\n\n'
              '• Difamação: espalhar boatos, fofocas e mentiras sobre sua conduta ou vida íntima perante terceiros, no trabalho ou em redes sociais para manchar sua reputação e dignidade;\n\n'
              '• Injúria: ofender diretamente sua dignidade e decoro com apelidos pejorativos, xingamentos grosseiros e ofensas à sua honra e aparência.',
        ),
        BlocoTexto(
          titulo: '6) VIOLÊNCIA DIGITAL (VIRTUAL) E POLÍTICA',
          conteudo:
              'Com a expansão da tecnologia, novas formas de violência de gênero vêm sendo coibidas com rigor pela legislação:\n\n'
              '• Perseguição Virtual (Cyberstalking - Art. 147-A do CP): monitorar os passos da mulher na internet, criar perfis falsos para perturbá-la ou enviar mensagens insistentes e ameaçadoras;\n\n'
              '• Divulgação Não Autorizada de Intimidade (Revenge Porn): publicar ou ameaçar divulgar fotos, vídeos ou áudios íntimos sem o consentimento da vítima;\n\n'
              '• Invasão de Dispositivos e Contas: invadir contas de e-mail, redes sociais ou instalar programas espiões no celular da vítima para rastrear suas conversas e localização por GPS;\n\n'
              '• Violência Política contra a Mulher: assediar, constranger ou humilhar mulheres candidatas ou detentoras de mandato eletivo com a finalidade de impedir ou dificultar sua atuação política.',
        ),
        BlocoTexto(
          titulo: '7) VIOLÊNCIA VICÁRIA (CONTRA OS FILHOS OU FAMILIARES)',
          conteudo:
              'Forma de violência na qual o agressor utiliza terceiros que a mulher ama – principalmente os filhos menores, mas também pais, irmãos ou animais de estimação – como instrumento para causar dor, sofrimento psicológico irreparável e desestabilização à mãe.\n\n'
              'Manifesta-se através de ameaças de tirar a guarda dos filhos, alienação parental forçada, maus-tratos contra os dependentes para atingir a mãe ou descumprimento intencional do pagamento de pensão alimentícia.',
        ),
      ],
    );
  }
}
