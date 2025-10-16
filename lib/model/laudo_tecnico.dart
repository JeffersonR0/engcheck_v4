import 'package:engcheck_v4_0_0/model/cliente.dart';
import 'package:engcheck_v4_0_0/model/imagem_laudo.dart';
import 'package:engcheck_v4_0_0/model/norma.dart';

class LaudoTecnico {
  String titulo;
  Cliente? cliente;
  List<ImagemLaudo> imagens;

  LaudoTecnico({this.titulo = '', this.cliente, List<ImagemLaudo>? imagens})
    : imagens = imagens ?? [];

  List<Norma> get todasNormasVioladas {
    final setDeNormas = <Norma>{};
    for (final imagem in imagens) {
      setDeNormas.addAll(imagem.normasVioladas);
    }
    return setDeNormas.toList();
  }
}
