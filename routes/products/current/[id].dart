import 'package:shoko_api_core/shoko_api_core.dart';
import 'package:shop_api/domain/source.dart';

Future<Response> onRequest(RequestContext context, String id) async => _RouteController().direct(context.request, {'id': id});

class _RouteController extends RouteController {
  @override
  Future<Response> get(Request request, [Map<String, dynamic>? dynamicRouteParams]) async {
    final body = dynamicRouteParams ?? {};
    final product = ProductsSource().byId(int.parse(body['id']));

    if (product == null) throw RepositoryException(ErrorCodes.instance.client.notFound);

    return Response.json(body: product.toJson());
  }
}
