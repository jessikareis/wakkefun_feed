import 'dart:convert';

class UsuarioAutorIcone {
  final String id;
  final String url;
  final int xpAmount;

  UsuarioAutorIcone({
    required this.id,
    required this.url,
    required this.xpAmount,
  });

  UsuarioAutorIcone copyWith({
    String? id,
    String? url,
    int? xpAmount,
  }) {
    return UsuarioAutorIcone(
      id: id ?? this.id,
      url: url ?? this.url,
      xpAmount: xpAmount ?? this.xpAmount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'url': url,
      'xp_amount': xpAmount,
    };
  }

  factory UsuarioAutorIcone.fromMap(Map<String, dynamic> map) {
    return UsuarioAutorIcone(
      id: map['id'],
      url: map['url'],
      xpAmount: map['xp_amount'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UsuarioAutorIcone.fromJson(String source) => UsuarioAutorIcone.fromMap(json.decode(source));

  @override
  String toString() => 'UsuarioAutorIcone(id: $id, url: $url, xpAmount: $xpAmount)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UsuarioAutorIcone && other.id == id && other.url == url && other.xpAmount == xpAmount;
  }

  @override
  int get hashCode => id.hashCode ^ url.hashCode ^ xpAmount.hashCode;
}
