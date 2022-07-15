import 'package:bavito_mobile_app/services/client_service.dart';
import 'package:bavito_mobile_app/ui/models/request.dart';
import 'package:bavito_mobile_app/utils/auto_router.gr.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

class ListTileRequest extends StatelessWidget {
  final Request request;

  const ListTileRequest({
    Key? key,
    required this.request,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(const OffersPageRoute());
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                color: Colors.grey[200],
              ),
              child: Icon(
                request.object.toLowerCase() == 'дом' ? Icons.home_outlined : Icons.location_city_outlined,
                color: Colors.black,
                size: 25,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${request.action} ${request.object}',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          request.location,
                          style: const TextStyle(fontSize: 18),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    '${request.minPrice} ₽ - ${request.maxPrice} ₽',
                    style: const TextStyle(fontSize: 18),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
