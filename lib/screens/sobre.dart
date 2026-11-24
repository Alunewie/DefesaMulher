import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:defesa_mulher_app/custom_widgets/custom_scaffold.dart';

class Sobre extends StatelessWidget {
  const Sobre({super.key});

  Future<void> _abrirLink(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  void _exibirDialogo(
    BuildContext context, {
    required String titulo,
    required Widget conteudo,
  }) {
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: const Color(0xFFFFFFFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
            side: const BorderSide(color: Color(0xFFA7C262), width: 3),
          ),
          title: Text(
            titulo,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF503769),
            ),
          ),
          content: SingleChildScrollView(child: conteudo),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: const Text(
                'Fechar',
                style: TextStyle(
                  color: Color(0xFF503769),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final double larguraTela = MediaQuery.sizeOf(context).width;
    final double larguraCard = larguraTela > 400 ? 362 : larguraTela - 32;

    return CustomScaffold(
      titulo: 'Sobre o aplicativo',
      icone: Icons.help_outline,
      conteudos: [
        Container(
            width: larguraCard,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding:const EdgeInsets.all(12.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color.fromRGBO(226, 221, 232, 1),

                    ),
                    child:
                    const Text(
                      'O Sinal Lilás - Defesa da Mulher é um aplicativo mobile que oferece conteúdo confiável, acessível e seguro sobre prevenção e enfrentamento da violência contra a mulher, direitos garantidos por lei e canais oficiais de proteção e emergência.',
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.45,
                        color: Color(0xFF2C2735),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  _buildBotaoOpcao(
                    context: context,
                    largura: larguraCard,
                    icone: Icons.language,
                    rotulo: 'Política de Privacidade',
                    onTap: () => _mostrarPoliticaPrivacidade(context),
                  ),
                  const SizedBox(height: 14),
                  _buildBotaoOpcao(
                    context: context,
                    largura: larguraCard,
                    icone: Icons.menu_book,
                    rotulo: 'Fontes',
                    onTap: () => _mostrarFontes(context),
                  ),
                  const SizedBox(height: 14),
                  _buildBotaoOpcao(
                    context: context,
                    largura: larguraCard,
                    icone: Icons.people_alt_outlined,
                    rotulo: 'Créditos',
                    onTap: () => _mostrarCreditos(context),
                  ),
                  const SizedBox(height: 28),
                  const Column(
                    children: [
                      Text(
                        'Versão 1.0',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF503769),
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Atualizado em: 2026',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF503769),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ],
    );
  }

  Widget _buildBotaoOpcao({
    required BuildContext context,
    required double largura,
    required IconData icone,
    required String rotulo,
    required VoidCallback onTap,
  }) {
    return SizedBox(
      width: largura,
      height: 60,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFCFBBE8),
          foregroundColor: const Color(0xFF1D192B),
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icone, size: 24, color: const Color(0xFF1D192B)),
            const SizedBox(width: 14),
            Flexible(
              child: Text(
                rotulo,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1D192B),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _mostrarPoliticaPrivacidade(BuildContext context) {
    _exibirDialogo(
      context,
      titulo: 'Política de Privacidade',
      conteudo: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Compromisso com a sua Segurança:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(height: 8),
          Text(
            '• Sem Cadastro Obrigatório: O aplicativo não exige login, senha, e-mail ou dados pessoais para acesso aos conteúdos de orientação.\n\n'
            '• Privacidade e Sigilo: Não coletamos CPF, endereço, localização contínua por GPS ou relatos pessoais.\n\n'
            '• Navegação Segura: Recomendamos que limpe o histórico de chamadas e pesquisas após utilizar canais oficiais caso seu aparelho seja monitorado por terceiros.',
            style: TextStyle(fontSize: 14, height: 1.4),
          ),
        ],
      ),
    );
  }

  void _mostrarFontes(BuildContext context) {
    _exibirDialogo(
      context,
      titulo: 'Fontes Oficiais Consultadas',
      conteudo: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Conteúdos fundamentados em órgãos e legislações oficiais:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          const SizedBox(height: 12),
          _buildItemFonte(
            'Lei Maria da Penha (Lei nº 11.340/2006)',
            'Legislação Federal brasileira de proteção aos direitos da mulher.',
          ),
          _buildItemFonte(
            'Instituto Maria da Penha (IMP)',
            'Tipologias da violência e orientações para identificação e enfrentamento.',
            url: 'https://www.institutomariadapenha.org.br',
          ),
          _buildItemFonte(
            'Agência Gov / EBC',
            'Canais oficiais de socorro e redes especializadas de atendimento.',
            url: 'https://agenciagov.ebc.com.br',
          ),
          _buildItemFonte(
            'ONG Recomeçar',
            'Apoio a vítimas, plano de fuga e ciclo da violência.',
            url: 'https://ongrecomecar.org.br',
          ),
          _buildItemFonte(
            'Ministério das Mulheres - Ligue 180',
            'Central Nacional de Atendimento à Mulher.',
          ),
        ],
      ),
    );
  }

  Widget _buildItemFonte(String titulo, String descricao, {String? url}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titulo,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          const SizedBox(height: 2),
          Text(
            descricao,
            style: const TextStyle(fontSize: 13, color: Color(0xFF49454F)),
          ),
          if (url != null) ...[
            const SizedBox(height: 2),
            GestureDetector(
              onTap: () => _abrirLink(url),
              child: Text(
                url,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFF503769),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  void _mostrarCreditos(BuildContext context) {
    _exibirDialogo(
      context,
      titulo: 'Créditos do Projeto',
      conteudo: Column(
        spacing: 5,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Projeto de Extensão Fábrica de Software',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Color(0xFF1D192B),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Aplicativo Sinal Lilás - Defesa da Mulher',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Color(0xFF1D192B),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Professor Coordernador:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          const Text(' Prof. Dr. Elvio Gilberto da Silva',
            style: TextStyle(fontSize: 14, height: 1.4),
          ),
          const SizedBox(height: 5),
          const Text(
            'Professores Colaboradores:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          const Text(' Prof. Me. Luis Felipe Grael Tinós \n Prof.ª Esp. Camila Pellizon Floret',
            style: TextStyle(fontSize: 14, height: 1.4),
          ),
          const SizedBox(height: 5),
          const Text(
            'Tutores de Apoio:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          const Text(''' Luis Guilherme Tiritan Martins \n Pedro Guermandi Bressan \n Yago da Silva Leme ''',
            style: TextStyle(fontSize: 14, height: 1.4),
          ),
          const SizedBox(height: 5),
          const Text(
            'Integrantes:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          const Text(''' Vinicius Lima Santos \n -Ciência da Computação \n Bianca Vitória Pinheiro da Silva \n -Design''',
            style: TextStyle(fontSize: 14, height: 1.4),
          ),
          const SizedBox(height: 5),
          const Center(
            child:   Text(
              'Desenvolvimento',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Center(
            child: Image.asset('assets/logo_universidade.png'),
          ),
          const Center(
            child:   Text(
              'Apoio',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Center(
            child: Image.asset('assets/banner_universidade.png'),
          )
        ],
      ),
    );
  }
}
