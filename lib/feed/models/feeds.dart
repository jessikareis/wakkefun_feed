// To parse this JSON data, do
//
//     final feedsModel = feedsModelFromJson(jsonString);

import 'dart:convert';

List<FeedsModel> feedsModelFromJson(String str) => List<FeedsModel>.from(json.decode(str).map((x) => FeedsModel.fromMap(x)));

String feedsModelToJson(List<FeedsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FeedsModel {
  final String id;
  final bool privado;
  final int partidasExecutadasQtd;
  final int comentariosQtd;
  final int mediaNota;
  final num mediaAcertos;
  final num porcetagemMediaAcertos;
  final num mediaDuracao;
  final num avaliacaoNota;
  final bool statusAtivo;
  final bool finalizado;
  final String desafioId;
  final String titulo;
  final String descricao;
  final String usuarioAutor;
  final String usuarioAutorNome;
  final String usuarioAutorApelido;
  final String imagemCapa;
  final String linkVideo;
  final String numeroNic;
  final String dataCriacao; //verificar
  final int v;
  final bool podeSerExcluido;
  final String? usuarioAutorImagemPerfil;
  // final UsuarioAutorBorda usuarioAutorBorda;
  // final UsuarioAutorIcone usuarioAutorIcone;
  FeedsModel({
    required this.id,
    required this.privado,
    required this.partidasExecutadasQtd,
    required this.comentariosQtd,
    required this.mediaNota,
    required this.mediaAcertos,
    required this.porcetagemMediaAcertos,
    required this.mediaDuracao,
    required this.avaliacaoNota,
    required this.statusAtivo,
    required this.finalizado,
    required this.desafioId,
    required this.titulo,
    required this.descricao,
    required this.usuarioAutor,
    required this.usuarioAutorNome,
    required this.usuarioAutorApelido,
    required this.imagemCapa,
    required this.linkVideo,
    required this.numeroNic,
    required this.dataCriacao,
    required this.v,
    required this.podeSerExcluido,
    required this.usuarioAutorImagemPerfil,
    // required this.usuarioAutorBorda,
    // required this.usuarioAutorIcone,
  });

  Map<String, dynamic> toMap() {
    return {
      '_id': id,
      'privado': privado,
      'partidas_executadas_qtd': partidasExecutadasQtd,
      'comentarios_qtd': comentariosQtd,
      'media_nota': mediaNota,
      'media_acertos': mediaAcertos,
      'porcetagem_media_acertos': porcetagemMediaAcertos,
      'media_duracao': mediaDuracao,
      'avaliacao_nota': avaliacaoNota,
      'status_ativo': statusAtivo,
      'finalizado': finalizado,
      'desafio_id': desafioId,
      'titulo': titulo,
      'descricao': descricao,
      'usuario_autor': usuarioAutor,
      'usuario_autor_nome': usuarioAutorNome,
      'usuario_autor_apelido': usuarioAutorApelido,
      'imagem_capa': imagemCapa,
      'link_video': linkVideo,
      'numero_nic': numeroNic,
      'data_criacao': dataCriacao,
      '__v': v,
      'pode_ser_excluido': podeSerExcluido,
      'usuario_autor_imagem_perfil': usuarioAutorImagemPerfil,
      // 'usuario_autor_borda': usuarioAutorBorda.toMap(),
      // 'usuario_autor_icone': usuarioAutorIcone.toMap(),
    };
  }

  factory FeedsModel.fromMap(Map<String, dynamic> map) {
    return FeedsModel(
      id: map['_id'],
      privado: map['privado'],
      partidasExecutadasQtd: map['partidas_executadas_qtd'],
      comentariosQtd: map['comentarios_qtd'],
      mediaNota: map['media_nota'],
      mediaAcertos: map['media_acertos'],
      porcetagemMediaAcertos: map['porcetagem_media_acertos'],
      mediaDuracao: map['media_duracao'],
      avaliacaoNota: map['avaliacao_nota'],
      statusAtivo: map['status_ativo'],
      finalizado: map['finalizado'],
      desafioId: map['desafio_id'],
      titulo: map['titulo'],
      descricao: map['descricao'],
      usuarioAutor: map['usuario_autor'],
      usuarioAutorNome: map['usuario_autor_nome'],
      usuarioAutorApelido: map['usuario_autor_apelido'],
      imagemCapa: map['imagem_capa'],
      linkVideo: map['link_video'],
      numeroNic: map['numero_nic'],
      dataCriacao: map['data_criacao'],
      v: map['__v'],
      podeSerExcluido: map['pode_ser_excluido'],
      usuarioAutorImagemPerfil: map['usuario_autor_imagem_perfil'],
      // usuarioAutorBorda: UsuarioAutorBorda.fromMap(map['usuario_autor_borda']),
      // usuarioAutorIcone: UsuarioAutorIcone.fromMap(map['usuario_autor_icone']),
    );
  }

  String toJson() => json.encode(toMap());

  factory FeedsModel.fromJson(String source) => FeedsModel.fromMap(json.decode(source));
}
