import 'package:bavito_mobile_app/ui/models/request.dart';
import 'package:bavito_mobile_app/ui/common/list_tile_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RequestsList extends StatelessWidget {
  final List<Request> requests;

  const RequestsList({Key? key, required this.requests}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Девайсы',
            style: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ..._buildList(),
        ],
      ),
    );
  }

  List<Widget> _buildList() {
    List<Widget> widgetList = [];
    for (Request request in requests) {
      widgetList.add(ListTileRequest(
        request: request,
        onTap: () {},
      ));
      widgetList.add(SizedBox(height: 10.h));
    }
    return widgetList;
  }
}
