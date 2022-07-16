import 'package:bavito_mobile_app/ui/common/custom_app_bar.dart';
import 'package:bavito_mobile_app/ui/pages/delcaration_page/down_part.dart';
import 'package:bavito_mobile_app/ui/pages/delcaration_page/widgets/photo_cards.dart';
import 'package:bavito_mobile_app/ui/pages/delcaration_page/widgets/video.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/flats.dart';
import '../../widgets/step_progress_indicator.dart';

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
        title: 'Квартира',
        showback: true,
      ),
      body: ListView(
        children: [
          PhotoCards(
            imageUrls: imageUrls,
          ),
          SizedBox(
            height: 16.h,
          ),
          DownPart(
            description: "Бла-бла-бла",
          ),
          flat.isDone
              ? Container()
              : Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      const Text(
                        "Стадия строительства",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      const Text(
                        "Ваш дом построен на 76%",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          ...List.generate(
                            100,
                            (index) => Container(
                              
                              height: 5,
                              width: (MediaQuery.of(context).size.width - 30) /
                                  100,
                              constraints: BoxConstraints(
                                minWidth: 3.w,
                              ),
                              color:
                                  index < 76 ? Colors.greenAccent : Colors.grey,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      const Video(),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
