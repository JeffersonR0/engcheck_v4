import 'package:engcheck_v4_0_0/const/const_colors.dart';
import 'package:engcheck_v4_0_0/const/const_fonts.dart';
import 'package:engcheck_v4_0_0/widgets/custom_action_button.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final Color secondaryThemeColor = ConstColors().getSecondaryThemeColor();

    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(color: secondaryThemeColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Título do painel como na imagem
          Text(
            'Painel de ações',
            style: ConstFonts().getPrimaryFont(fontSize: 24),
          ),
          Text(
            'Selecione uma opção:',
            style: ConstFonts().getPrimaryFont(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 20),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 14,
            mainAxisSpacing: 14,
            shrinkWrap: true,
            physics:
                const NeverScrollableScrollPhysics(), // Desabilita o scroll do Grid
            children: [
              CustomActionButton(
                icon: Icons.description,
                label: 'Criar Laudo',
                onPressed: () {
                  print('Botão Criar Laudo pressionado!');
                  // Coloque sua navegação ou lógica aqui
                },
              ),
              CustomActionButton(
                icon: Icons.find_in_page,
                label: 'Consultar Laudo',
                onPressed: () {
                  print('Botão Editar Laudo pressionado!');
                },
              ),
              CustomActionButton(
                icon: Icons.group_add,
                label: 'Cadastrar Cliente',
                onPressed: () {
                  print('Botão Cadastrar Cliente pressionado!');
                },
              ),
              CustomActionButton(
                icon: Icons.group,
                label: 'Consultar Cliente',
                onPressed: () {
                  print('Botão Consultar pressionado!');
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'Último relatório criado por você:',
            style: ConstFonts().getPrimaryFont(fontSize: 16),
          ),
          SizedBox(height: 7),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(1, 1, 1, 0.226),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Título: teste de relatório dia 01-01-2025'),
                Text('Criado em: 01-01-2025'),
                Text('Cliente: Fulano de Tal'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
