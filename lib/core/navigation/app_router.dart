import 'package:go_router/go_router.dart';
import 'package:pokemon_rainbow_city_app/features/home/home_page.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemAdd/item_add_page.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemDetail/item_detail_page.dart';
import 'package:pokemon_rainbow_city_app/features/item/itemList/item_list_page.dart';
import 'route_names.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      name: RouteNames.home,
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      name: RouteNames.itemAdd,
      path: '/item/add',
      builder: (context, state) => const ItemAddlPage(),
    ),
    GoRoute(
      name: RouteNames.itemList,
      path: '/items',
      builder: (context, state) => const ItemListPage(),
    ),
    GoRoute(
      name: RouteNames.itemDetail,
      path: '/item/:id',
      builder: (context, state) {
        final idStr = state.pathParameters['id'];
        if (idStr == null) {
          throw Exception('Missing path parameter: id');
        }
        final int id = int.parse(idStr);
        return ItemDetailPage(itemId: id);
      },
    ),
  ],
);
