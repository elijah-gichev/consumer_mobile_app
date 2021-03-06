import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final double height;
  final double width;
  final String initials;
  final String? image;
  const ProfileImage({
    Key? key,
    required this.height,
    required this.width,
    this.image,
    required this.initials,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(150)),
      ),
      child: (image == null)
          ? Column(
              children: [
                SizedBox(height: height * 0.2),
                Text(
                  initials,
                  style: TextStyle(
                    fontSize: height * 0.5,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            )
          : null,
    );
  }
}
