import 'package:bavito_mobile_app/data/repository/offers_repository.dart';
import 'package:bavito_mobile_app/di/locator.dart';
import 'package:bavito_mobile_app/ui/common/custom_app_bar.dart';
import 'package:bavito_mobile_app/ui/models/offer.dart';
import 'package:bavito_mobile_app/ui/pages/details_page/details_page.dart';
import 'package:bavito_mobile_app/ui/widgets/offers_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/repository/flats_repository.dart';
import '../../models/flats.dart';

class FlatsPage extends StatefulWidget {
  const FlatsPage({Key? key}) : super(key: key);

  @override
  State<FlatsPage> createState() => _OffersPageState();
}

class _OffersPageState extends State<FlatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: const CustomAppBar(
        title: Text(
          'Квартиры',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        showback: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                TextButton.icon(
                  onPressed: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      context: context,
                      builder: (_) => const DetailsPage(),
                    );
                  },
                  label: const Text(
                    'Фильтры',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                    ),
                  ),
                  icon: const Icon(Icons.filter_alt),
                ),
                const Spacer(),
                TextButton.icon(
                  onPressed: () {
                    // context.router.push(DeclarationPageRoute());
                  },
                  label: const Text(
                    'Сортировка',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                    ),
                  ),
                  icon: const Icon(Icons.sort_by_alpha),
                ),
              ],
            ),
            FutureBuilder<List<Flats>>(
              future: getIt<FlatsRepository>().getFlats(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (snapshot.hasError) {
                  return const Center(
                    child: Text(
                      'Что-то пошло не так!',
                    ),
                  );
                } else if (snapshot.hasData) {
                  return Expanded(
                    child: OffersList(
                      offers: snapshot.data!,
                    ),
                  );
                }

                return const SizedBox();
              },
            ),
          ],
        ),
      ),
    );
  }
}
