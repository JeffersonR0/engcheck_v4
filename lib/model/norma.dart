class Norma {
  final String codigo;
  final String descricao;

  const Norma({required this.codigo, required this.descricao});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Norma &&
          runtimeType == other.runtimeType &&
          codigo == other.codigo;

  @override
  int get hashCode => codigo.hashCode;
}
