import 'package:bavito_mobile_app/ui/pages/delcaration_page/widgets/page_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhotoCards extends StatefulWidget {
  List<String> imageUrls;

  PhotoCards({required this.imageUrls, Key? key}) : super(key: key);

  @override
  State<PhotoCards> createState() => _PhotoCardsState();
}

class _PhotoCardsState extends State<PhotoCards> {
  int currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280.h,
      color: Colors.white,
      child: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                currentPage = index + 1;
              });
            },
            children: widget.imageUrls
                .map(
                  (imageUrl) => Image.asset(imageUrl, fit: BoxFit.fill),
                )
                .toList(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: PageCounter(
              currentPage: currentPage,
              totalCount: widget.imageUrls.length,
            ),
          ),
        ],
      ),
    );
  }
}
