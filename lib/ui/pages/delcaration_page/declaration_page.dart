import 'package:bavito_mobile_app/ui/common/custom_app_bar.dart';
import 'package:bavito_mobile_app/ui/pages/details_page/details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class DeclarationPage extends StatelessWidget {
  final imageUrls = [
    'assets/images/flat1.png',
    'assets/images/flat1.png',
    'assets/images/flat1.png',
    'assets/images/flat1.png',
    'assets/images/flat1.png',
  ];

  DeclarationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Квартира',
        showback: true,
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  context: context,
                  builder: (_) => const DetailsPage());
            },
            child: const Text(
              'Добавить',
              style: TextStyle(
                fontSize: 15,
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(
            height: 600.h,
            child: ModelViewer(
              src: 'assets/images/model.glb',
              backgroundColor: Colors.blueAccent,
            ),
          ),
        ],
      ),
    );
  }
}
