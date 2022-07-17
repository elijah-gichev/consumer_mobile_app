import 'package:bavito_mobile_app/ui/pages/delcaration_page/widgets/page_counter.dart';
import 'package:flutter/material.dart';

class PhotoCards extends StatefulWidget {
  final bool changeOrder;
  List<String> imageUrls;

  PhotoCards({required this.changeOrder, required this.imageUrls, Key? key}) : super(key: key);

  @override
  State<PhotoCards> createState() => _PhotoCardsState();
}

class _PhotoCardsState extends State<PhotoCards> {
  int currentPage = 1;
  final PageController controller = PageController();
  // @override
  // void initState() {
  //   if (widget.changeOrder) {
  //     currentPage = 2;
  //   }
  //   super.initState();
  // }

  @override
  void didUpdateWidget(covariant PhotoCards oldWidget) {
    if (widget.changeOrder) {
      currentPage = 2;
      controller.animateToPage(2, duration: const Duration(milliseconds: 100), curve: Curves.ease);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          PageView(
            controller: controller,
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
