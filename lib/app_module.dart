import 'package:flutter_modular/flutter_modular.dart';
import 'package:wakkefun_feed/feed/feed_controller.dart';
import 'package:wakkefun_feed/feed/feed_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        // Bind.singleton((i) => FeedController()),
        Bind((i) => FeedController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (context, args) =>
                FeedPage(controller: Modular.get())),
      ];
}
