import 'package:shoko_api_core/shoko_api_core.dart';
import 'package:shop_api/enums/product_categories.dart';

Future<Response> onRequest(RequestContext context) async => _RouteController().direct(context.request);

class _RouteController extends RouteController {
  @override
  Future<Response> get(Request request, [Map<String, dynamic>? dynamicRouteParams]) async {
    return Response.json(body: ProductCategory.values.map((e) => e.name).toList());
  }
}
