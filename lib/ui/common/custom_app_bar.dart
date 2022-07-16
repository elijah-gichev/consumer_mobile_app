import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showback;
  final Widget title;
  final Color buttonColor;

  final bool isCenterTitle;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.showback = false,
    this.isCenterTitle = true,
    this.buttonColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
      title: title,
      centerTitle: isCenterTitle,
      leading: showback
          ? IconButton(
              onPressed: () {
                context.router.pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                size: 20,
              ),
              color: buttonColor,
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
