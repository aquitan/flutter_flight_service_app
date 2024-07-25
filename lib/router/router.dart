import 'package:auto_route/auto_route.dart';
import 'package:gethigh/features/history/history.dart';
import 'package:gethigh/features/home/home.dart';
import 'package:gethigh/features/hot/hot.dart';
import 'package:gethigh/features/profile/profile.dart';
import 'package:gethigh/features/search/search.dart';


part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: HomeRoute.page, path: '/', children: [
          AutoRoute(page: HotRoute.page, path: 'hot'),
          AutoRoute(page: HistoryRoute.page, path: 'history'),
          AutoRoute(page: ProfileRoute.page, path: 'profile'),
          AutoRoute(page: SearchRoute.page, path: 'search'),
        ]),

      ];
}
