// import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:study/Routes/routes_name.dart';
import 'app_router.gr.dart';
// dart run build_runner build --delete-conflicting-outputs
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: Test.page, path: RoutesName.test, initial: true),
        AutoRoute(page: Dashboard.page, path: RoutesName.dashboard),
        AutoRoute(page: Homepage.page, path: RoutesName.home)
      ];
}
