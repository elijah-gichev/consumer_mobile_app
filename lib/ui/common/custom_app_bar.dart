import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class CustomAppBar extends StatelessWidget {
  final String? buttonLabel;
  final String title;

  const CustomAppBar({Key? key, this.buttonLabel, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buttonLabel != null
                  ? TextButton.icon(
                      onPressed: () {
                        context.router.pop();
                      },
                      icon: const Icon(Icons.arrow_back_ios_new),
                      label: Text(
                        buttonLabel!,
                        style: const TextStyle(fontSize: 19),
                        textAlign: TextAlign.center,
                      ),
                    )
                  : const SizedBox(width: 130, height: 48),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 130),
            ],
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
