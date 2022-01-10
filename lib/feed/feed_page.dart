import 'package:flutter/material.dart';
import 'package:wakkefun_feed/feed/feed_controller.dart';

import 'widgets/card_custom.dart';
import 'widgets/title_custom.dart';

class FeedPage extends StatelessWidget {
  final FeedController controller;

  const FeedPage({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          brightness: Brightness.light,
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () => debugPrint("teste"),
                icon: Image.asset('assets/images/icon_header_search.png',
                    height: 20))
          ],
          leading:
              Image.asset('assets/images/icon_header_menu.png', scale: 1.3),
          title: Image.asset(
            'assets/images/logo_wakke_roxo.png',
            height: 15,
          ),
          backgroundColor: Colors.white,
        ),
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: 18,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  index == 0 ? const TitleCustom() : const SizedBox(),
                  CardCustom(feedItem: controller.feedsList[index]),
                ],
              );
            }),
        floatingActionButton: Image.asset("assets/images/button_fun.png",
            height: 60, fit: BoxFit.fitHeight),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: const CircularNotchedRectangle(),
          child: BottomNavigationBar(
            onTap: (index) {},
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset("assets/images/icon_header_menu.png",
                      height: 30, color: Colors.grey, fit: BoxFit.fitHeight),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/images/icon_add.png",
                      height: 30, color: Colors.grey, fit: BoxFit.fitHeight),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/images/icon_account.png",
                      height: 30, color: Colors.grey, fit: BoxFit.fitHeight),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/images/icon_notificacoes.png",
                      height: 30, color: Colors.grey, fit: BoxFit.fitHeight),
                  label: ""),
            ],
          ),
        ));
  }
}
