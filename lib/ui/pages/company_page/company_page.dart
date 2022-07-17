import 'package:bavito_mobile_app/ui/common/custom_app_bar.dart';
import 'package:bavito_mobile_app/ui/models/service.dart';
import 'package:bavito_mobile_app/ui/pages/company_page/widgets/list_tile_company.dart';
import 'package:flutter/material.dart';

class CompanyPage extends StatelessWidget {
  final String title;
  final List<Service> services;
  const CompanyPage({required this.title, required this.services, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        showback: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            ...services.map(
              (s) {
                return ListTileCompany(
                  service: s,
                  onTap: () {},
                );
              },
            ).toList()
          ],
        ),
      ),
    );
  }
}
