import 'package:bavito_mobile_app/ui/pages/smart_district/widgets/company_around_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmartDistrictPage extends StatelessWidget {
  const SmartDistrictPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(
              height: 250.h,
              color: Colors.deepPurpleAccent,
              child: Column(
                children: [
                  const ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Icon(
                      Icons.attach_money_sharp,
                      size: 30,
                    ),
                    title: Text(
                      'Привет, Иван',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                    subtitle: Text(
                      'С возвращением!',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  CompanyAroundTextField(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
