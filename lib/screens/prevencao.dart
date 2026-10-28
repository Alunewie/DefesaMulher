import 'package:defesa_mulher_app/custom_widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

class Prevencao extends StatelessWidget {
  const Prevencao({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      conteudos: [
        Container(
          padding: const EdgeInsets.all(15),
          height: 456,
          width: 362,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(226, 221, 232, 1),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '1) SINAIS DE ALERTA NO RELACIONAMENTO (O VIOLENTÔMETRO)',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'A violência quase nunca tem início de forma abrupta ou com agressões físicas; ela surge de maneira gradual e disfarçada de afeto, cuidado ou ciúme. O "Violentômetro" ajuda a identificar os níveis de escalada do abuso:\n\n'
                  '• Fase de Alerta Inicial (Atenção): piadas humilhantes e sarcasmo constante sobre a sua inteligência ou aparência; ciúme excessivo sob a justificativa de "cuidado"; controle de roupas, maquiagem e amizades; exigência de saber suas senhas de redes sociais e celular;\n\n'
                  '• Fase de Tensão e Intimidação (Reaja): repreensões e ofensas em público; manipulação psicológica (fazer você se sentir culpada por tudo); chantagem emocional; destruição de objetos de afeto; controle rigoroso do seu dinheiro e isolamento de sua família;\n\n'
                  '• Fase de Perigo Extremo (Procure Ajuda Urgente): ameaças veladas ou diretas de morte; agressões físicas (empurrões, tapas, puxões de cabelo); coerção para atos sexuais; confinamento ou proibição de sair de casa sem autorização.\n\n'
                  'Fique atenta: quando o agressor ultrapassa um limite, o próximo limite sempre fica mais próximo.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(height: 20),

                Text(
                  '2) PLANO PESSOAL DE SEGURANÇA',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Se você vive em um ambiente de risco ou está planejando romper a relação, montar um plano prévio de segurança pode salvar a sua vida e a dos seus dependentes:\n\n'
                  '• Kit de Emergência (Bolsa de Fuga): mantenha reunida uma pasta ou bolsa discreta com documentos originais ou cópias autenticadas (RG, CPF, certidão de nascimento dos filhos, carteira de vacinação, comprovante de residência e carteira de trabalho), chaves reservas, medicamentos de uso contínuo e alguma quantia em dinheiro em espécie. Se possível, guarde esse kit na casa de uma pessoa de confiança ou no trabalho;\n\n'
                  '• Telefones Importantes Fora do Celular: anote em um papel guardado na carteira os números de telefone de familiares, amigos confiáveis, do abrigo local, da delegacia e da polícia militar, caso o agressor confisque ou destrua seu aparelho;\n\n'
                  '• Rota de Saída: identifique antecipadamente as saídas da casa. Em momentos de discussão, evite cômodos sem saída fácil ou locais onde existam objetos cortantes, como a cozinha ou a área de serviço;\n\n'
                  '• Palavra-Código de Emergência: combine previamente uma palavra, frase inocente ou emoji secreto com vizinhos, familiares ou amigas próximas. Se você enviar essa palavra, eles saberão que você está em perigo e deverão ligar imediatamente para o 190.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(height: 20),

                Text(
                  '3) SEGURANÇA DIGITAL E PRIVACIDADE NO CELULAR',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'O celular é frequentemente alvo de vigilância por parte do agressor. Práticas recomendadas para manter sua segurança digital:\n\n'
                  '• Navegação Anônima: use o modo anônimo/privado do navegador para pesquisar sobre apoio, delegacias e direitos, ou limpe o histórico de navegação e as pesquisas recentes após o uso;\n\n'
                  '• Ocultar Notificações na Tela Bloqueada: configure o aparelho para não exibir o conteúdo de mensagens recebidas na tela de bloqueio;\n\n'
                  '• Senhas Individuais: crie senhas alfanuméricas fortes que o companheiro não conheça (evite datas de nascimento, nomes de filhos ou combinações previsíveis) e não compartilhe seu padrão biométrico;\n\n'
                  '• Revisão de Aplicativos e Localização: verifique regularmente se há aplicativos desconhecidos instalados com permissões de acesso ao microfone, câmera ou localização por GPS em tempo real.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(height: 20),

                Text(
                  '4) COMO APOIAR UMA MULHER EM SITUAÇÃO DE VIOLÊNCIA',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Se você tem uma amiga, vizinha, colega de trabalho ou familiar nessa situação, sua postura pode fazer a diferença:\n\n'
                  '• Escuta Ativa e sem Julgamento: acolha os relatos com empatia e respeito. Nunca pergunte "por que você não sai de casa?" ou culpabilize a mulher pelas atitudes do agressor. Romper um ciclo de dependência afetiva, financeira e psicológica exige tempo e apoio;\n\n'
                  '• Não Confronte o Agressor Diretamente: enfrentar o agressor pode aumentar substancialmente o risco de retaliação e agressão grave contra a mulher após sua saída;\n\n'
                  '• Ofereça Ajuda Concreta: disponibilize sua residência como ponto de apoio seguro, guarde documentos ou pertences importantes dela e se ofereça para acompanhá-la até a delegacia, posto de saúde ou defensoria;\n\n'
                  '• Denúncia por Terceiros: qualquer pessoa que presencie ou tenha conhecimento de violência contra a mulher pode denunciar de forma anônima pelo Ligue 180 ou Disque 190.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(height: 20),

                Text(
                  '5) CANAIS OFICIAIS DE APOIO, ORIENTAÇÃO E EMERGÊNCIA',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Lembre-se sempre destes contatos oficiais disponíveis para todo o Brasil:\n\n'
                  '• Ligue 180 (Central de Atendimento à Mulher): gratuito, confidencial e disponível 24 horas por dia, 7 dias por semana. Oferece orientação, informações sobre a rede de proteção e recebe denúncias. Atendimento também por WhatsApp no número (61) 9610-0180;\n\n'
                  '• 190 (Polícia Militar): para situações de urgência e emergência, quando a agressão estiver acontecendo ou na iminência de ocorrer;\n\n'
                  '• Disque 100: Disque Direitos Humanos, para denúncias de violações contra crianças, adolescentes, idosas e pessoas vulneráveis;\n\n'
                  '• Delegacia Eletrônica: muitos estados permitem o registro online de boletim de ocorrência de violência doméstica e o pedido digital de medida protetiva de urgência;\n\n'
                  '• Defensoria Pública e CRAM/CREAS: serviços municipais e estaduais que prestam apoio psicossocial e assistência jurídica gratuita e contínua.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
      titulo: 'Prevenção e Orientação',
      ocultarBotaoSobre: true,
    );
  }
}
