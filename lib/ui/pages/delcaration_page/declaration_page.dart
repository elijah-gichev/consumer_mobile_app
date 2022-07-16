import 'package:bavito_mobile_app/ui/common/custom_app_bar.dart';
import 'package:bavito_mobile_app/ui/pages/delcaration_page/down_part.dart';
import 'package:bavito_mobile_app/ui/pages/delcaration_page/widgets/photo_cards.dart';
import 'package:bavito_mobile_app/ui/pages/delcaration_page/widgets/video.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

import '../../models/flats.dart';

class DeclarationPage extends StatelessWidget {
  final imageUrls = [
    'assets/images/flat1.png',
    'assets/images/flat1.png',
    'assets/images/flat1.png',
    'assets/images/flat1.png',
    'assets/images/flat1.png',
  ];
  final Flats flat;

  DeclarationPage({
    Key? key,
    required this.flat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text(
          'Квартира',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        showback: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 280.h,
            child: PhotoCards(
              imageUrls: imageUrls,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          DownPart(
            description: "Бла-бла-бла",
          ),
          flat.isDone
              ? ListView(
                  shrinkWrap: true,
                  children: const [
                    Text("Стадия строительства"),
                    Video(),
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}
