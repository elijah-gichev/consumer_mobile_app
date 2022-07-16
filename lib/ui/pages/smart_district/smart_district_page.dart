import 'package:bavito_mobile_app/ui/pages/smart_district/widgets/company_list.dart';
import 'package:bavito_mobile_app/ui/pages/smart_district/widgets/oportunity_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmartDistrictPage extends StatelessWidget {
  const SmartDistrictPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 250.h,
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                    //color: Colors.deepPurpleAccent,
                    image: DecorationImage(
                      image: Image.asset('assets/images/house5.jpg').image,
                      fit: BoxFit.fill,
                      colorFilter: const ColorFilter.mode(
                        Color.fromRGBO(0, 0, 0, 0.2),
                        BlendMode.darken,
                      ),
                    ),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Column(
                        children: [
                          ListTile(
                            contentPadding: const EdgeInsets.all(0),
                            leading: Container(
                              margin: const EdgeInsets.only(top: 2),
                              child: const Icon(
                                Icons.attach_money_sharp,
                                size: 30,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(12.0.r),
                                border: Border.all(color: Colors.orange[600]!),
                              ),
                            ),
                            title: const Text(
                              'Привет, Иван',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              'С возвращением!',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[200],
                              ),
                            ),
                          ),
                          Container(
                            width: 0.9.sw,
                            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            //height: 40.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0.r),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(70, 70, 70, 0.1),
                                  blurRadius: 5,
                                  blurStyle: BlurStyle.outer,
                                  //offset: Offset(0, 0),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: Colors.grey[400],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Компании рядом',
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Positioned(
                        bottom: -80.h,
                        left: 0.5.sw - 80.w - 20,
                        child: GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Container(
                                    width: 200.r,
                                    height: 200.r,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12.0.r),
                                      image: DecorationImage(
                                        image: Image.asset('assets/images/qr_image.png').image,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Stack(
                            children: [
                              Container(
                                width: 160.w,
                                height: 160.h,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12.0.r),
                                  border: Border.all(color: Colors.grey[400]!),
                                  image: DecorationImage(
                                    image: Image.asset('assets/images/qr_image.png').image,
                                    colorFilter: ColorFilter.mode(
                                      Colors.white.withOpacity(0.2),
                                      BlendMode.modulate,
                                    ),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: (160.w / 2) - 25,
                                bottom: (160.h / 2) - 22,
                                child: Container(
                                  padding: const EdgeInsets.all(5),
                                  child: Icon(
                                    Icons.fingerprint,
                                    color: Colors.deepPurple[700],
                                    size: 40,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0.r),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80.h,
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 100.h,
                  child: const OportunityList(),
                ),
                SizedBox(
                  height: 20.h,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Подборка компаний',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 130.r,
                  width: 1.sw,
                  child: const CompanyList(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
