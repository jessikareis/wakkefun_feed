import 'dart:convert';

class UsuarioAutorBorda {
  final String? id;
  final String? color1;
  final String? color2;

  UsuarioAutorBorda({
    required this.id,
    required this.color1,
    required this.color2,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'color1': color1,
      'color2': color2,
    };
  }

  factory UsuarioAutorBorda.fromMap(Map<String, dynamic> map) {
    return UsuarioAutorBorda(
      id: map['id'],
      color1: map['color1'],
      color2: map['color2'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UsuarioAutorBorda.fromJson(String source) => UsuarioAutorBorda.fromMap(json.decode(source));
}
