import 'package:bavito_mobile_app/ui/pages/delcaration_page/widgets/specification_unit.dart';
import 'package:flutter/material.dart';

import '../../../models/details.dart';

class Specification extends StatelessWidget {
  final Details data;
  const Specification({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SpecificationUnit(
          title: "Планировка",
          subtitle: PlanString.planToString(data.plan),
          icon: "icon",
        )
      ],
    );
  }
}
