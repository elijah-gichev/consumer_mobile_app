import 'package:bavito_mobile_app/ui/common/profile_image.dart';
import 'package:bavito_mobile_app/data/entity/client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClientCard extends StatelessWidget {
  final Client client;

  const ClientCard({
    Key? key,
    required this.client,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 10.h),
          ProfileImage(
            height: 100.r,
            width: 100.r,
            initials: '${client.name.substring(0, 1)}${client.surname.substring(0, 1)}',
          ),
          SizedBox(height: 20.h),
          Text(
            '${client.name} ${client.patronymic} ${client.surname.substring(0, 1)}.',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            client.phone,
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 15,
            ),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
