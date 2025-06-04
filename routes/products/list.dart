import 'package:shoko_api_core/shoko_api_core.dart';
import 'package:shop_api/domain/source.dart';

Future<Response> onRequest(RequestContext context) async => _RouteController().direct(context.request);

class _RouteController extends RouteController {
  @override
  Future<Response> get(Request request, [Map<String, dynamic>? dynamicRouteParams]) async {
    return Response.json(body: ProductsSource().get().map((e) => e.toJson()).toList());
  }
}
