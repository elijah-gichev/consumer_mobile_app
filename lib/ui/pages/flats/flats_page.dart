import 'package:bavito_mobile_app/data/repository/repository.dart';
import 'package:bavito_mobile_app/di/locator.dart';
import 'package:bavito_mobile_app/ui/common/custom_app_bar.dart';
import 'package:bavito_mobile_app/ui/pages/details_page/details_page.dart';
import 'package:bavito_mobile_app/ui/pages/flats/cubit/flats_cubit.dart';
import 'package:bavito_mobile_app/ui/widgets/offers_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlatsPage extends StatelessWidget {
  const FlatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FlatsCubit(getIt<Repository>())..loadFlats(),
      child: const FlatsPageView(),
    );
  }
}

class FlatsPageView extends StatefulWidget {
  const FlatsPageView({Key? key}) : super(key: key);

  @override
  State<FlatsPageView> createState() => _FlatsPageViewState();
}

class _FlatsPageViewState extends State<FlatsPageView> {
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
                      builder: (_) => DetailsPage(onDetailsReady: (details) {
                        context.read<FlatsCubit>().loadFilteredFlats(details);
                      }),
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
            BlocBuilder<FlatsCubit, FlatsState>(
              builder: (context, state) {
                if (state is FlatsLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (state is FlatsLoadingFailure) {
                  return const Center(
                    child: Text(
                      'Что-то пошло не так!',
                    ),
                  );
                }

                if (state is FlatsLoadingDone) {
                  return Expanded(
                    child: OffersList(
                      offers: state.flats,
                    ),
                  );
                }
                return Container();
              },
            )
          ],
        ),
      ),
    );
  }
}
