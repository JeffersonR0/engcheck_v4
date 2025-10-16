import 'package:engcheck_v4_0_0/model/norma.dart';

class Normasrepository {
  static final List<Norma> _todasAsNormas = [
    const Norma(
      codigo: 'NT-01/2025',
      descricao: 'Procedimentos Administrativos - Anexos de A a T',
    ),
  ];

  static List<Norma> getNormas() {
    return [..._todasAsNormas];
  }
}
