import 'package:bavito_mobile_app/ui/common/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Model3DPage extends StatelessWidget {
  const Model3DPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text(
          '3D-модель квартиры',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        showback: true,
      ),
      body: ModelViewer(
        src: 'assets/images/model.glb',
        backgroundColor: Colors.grey[200]!,
      ),
    );
  }
}
