import 'package:bavito_mobile_app/ui/common/profile_image.dart';
import 'package:bavito_mobile_app/ui/models/client.dart';
import 'package:bavito_mobile_app/ui/models/request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RequestCard extends StatelessWidget {
  final Request request;
  final Client client;

  const RequestCard({
    Key? key,
    required this.request,
    required this.client,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 3),
                Text(
                  request.location,
                  style: const TextStyle(fontSize: 15),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                const SizedBox(height: 3),
                Text(
                  '${request.minPrice} ₽ - ${request.maxPrice} ₽',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    ProfileImage(
                      height: 25.r,
                      width: 25.r,
                      initials: '${client.name.substring(0, 1)}${client.surname.substring(0, 1)}',
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '${client.name} ${client.patronymic} ${client.surname.substring(0, 1)}.',
                      style: const TextStyle(fontSize: 12),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
