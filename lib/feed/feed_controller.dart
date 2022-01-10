import 'package:wakkefun_feed/feed/models/feeds.dart';
import 'package:wakkefun_feed/utils/json_wakkefun.dart';

class FeedController {
  final feedsList = feedsModelFromJson(JSON_FEEDS);
}
