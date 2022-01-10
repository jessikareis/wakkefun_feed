import 'package:flutter/material.dart';
import 'package:wakkefun_feed/feed/models/feeds.dart';

class CardCustom extends StatelessWidget {
  final FeedsModel feedItem;

  const CardCustom({Key? key, required this.feedItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 8, left: 8, right: 8),
      child: Column(
        children: [
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(width: 8),
                  Container(
                    child: Image.network(
                      feedItem.usuarioAutorImagemPerfil ??
                          "https://via.placeholder.com/15",
                      width: 30,
                      height: 30,
                      fit: BoxFit.fitWidth,
                    ),
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(feedItem.usuarioAutorApelido),
                ],
              ),
              Row(
                children: [
                  Image.asset("assets/images/icon_coments.png",
                      height: 12, color: Colors.red),
                  const SizedBox(width: 3),
                  Text("${feedItem.comentariosQtd}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red)),
                  const SizedBox(width: 15),
                  Image.asset("assets/images/icon_star.png", height: 15),
                  const SizedBox(width: 3),
                  Text("${double.parse(feedItem.avaliacaoNota.toString())}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 140,
                left: 50,
                right: 50,
                bottom: 30,
              ),
              child: Container(
                // width: MediaQuery.of(context).size.width * 0.60,
                // height: 80,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(feedItem.titulo,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                  ),
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  color: Colors.greenAccent,
                ),
              ),
            ),
            height: 230,
            width: double.infinity,
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(6)),
              image: DecorationImage(
                image: NetworkImage(feedItem.imagemCapa),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      elevation: 1.5,
    );
  }
}
