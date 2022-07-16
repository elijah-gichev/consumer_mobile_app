import 'package:bavito_mobile_app/ui/common/custom_app_bar.dart';
import 'package:bavito_mobile_app/utils/date_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConstructionProgressPage extends StatelessWidget {
  const ConstructionProgressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: const Text(
            'Квартиры',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          showback: true,
          buttonColor: Colors.orange[600]!),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ConstructionProgressItem(
                corpsNumber: '1.2',
                inProgress: true,
                images: const [
                  'assets/images/house_creating.jpg',
                  'assets/images/house_creating1.jpg',
                  'assets/images/house_creating2.jpeg',
                ],
                dateTime: DateTime.now(),
              ),
              ConstructionProgressItem(
                corpsNumber: '1.4',
                inProgress: true,
                images: const [
                  'assets/images/house_creating1.jpg',
                  'assets/images/house_creating.jpg',
                  'assets/images/house_creating2.jpeg',
                ],
                dateTime: DateTime.now(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ConstructionProgressItem extends StatefulWidget {
  final String corpsNumber;
  final bool inProgress;

  final DateTime dateTime;

  final List<String> images;

  const ConstructionProgressItem({required this.dateTime, required this.images, required this.corpsNumber, this.inProgress = false, Key? key})
      : super(key: key);

  @override
  State<ConstructionProgressItem> createState() => _ConstructionProgressItemState();
}

class _ConstructionProgressItemState extends State<ConstructionProgressItem> {
  late final PageController pageController;

  @override
  void initState() {
    pageController = PageController(viewportFraction: 1.0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.9.sw,
      height: 300.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.h,
          ),
          Text(
            'Корпус ${widget.corpsNumber}',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15.h,
          ),
          if (widget.inProgress)
            Padding(
              padding: EdgeInsets.only(bottom: 15.h),
              child: const Text(
                'Идет строительство',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ),
          Expanded(
            child: PageView.builder(
              padEnds: false,
              controller: pageController,
              itemCount: widget.images.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0.r),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0.r),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0.r),
                            image: DecorationImage(
                              colorFilter: const ColorFilter.mode(
                                Color.fromRGBO(0, 0, 0, 0.2),
                                BlendMode.darken,
                              ),
                              image: Image.asset(widget.images[index]).image,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20.w,
                        bottom: 20.h,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              DateFormater.formatMMMM(
                                widget.dateTime,
                              ),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Обновлено ' +
                                  DateFormater.formatDate(
                                    widget.dateTime,
                                  ),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
