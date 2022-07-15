import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Квартира",
        ),
        leading: Icon(
          Icons.arrow_back_ios,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}

class PhotoCard extends StatefulWidget {
  const PhotoCard({Key? key}) : super(key: key);

  @override
  State<PhotoCard> createState() => _PhotoCardState();
}

class _PhotoCardState extends State<PhotoCard> {
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
            children: widget.photos.length == 0
                ? [
                    Container(
                      color: AppColors.placeholderColor,
                      child: Transform.scale(
                        scale: (116 / 280).width,
                        child: SvgPicture.asset(
                          AppAssets.placeholder,
                        ),
                      ),
                    ),
                  ]
                : widget.photos
                    .map(
                      (photo) =>
                          PageViewItem(photo: photo, photos: widget.photos),
                    )
                    .toList(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: PageCounter(
              currentPage: widget.photos.length == 0 ? 0 : currentPage,
              totalCount: widget.photos.length,
            ),
          ),
        ],
      ),
    );
  }
}
