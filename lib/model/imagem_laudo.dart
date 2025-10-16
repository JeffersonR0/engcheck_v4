import 'dart:io';

import 'package:engcheck_v4_0_0/model/norma.dart';

class ImagemLaudo {
  final File imagem;
  String observacoes;
  List<Norma> normasVioladas;

  ImagemLaudo({
    required this.imagem,
    this.observacoes = '',
    List<Norma>? normasVioladas,
  }) : normasVioladas = normasVioladas ?? [];
}
