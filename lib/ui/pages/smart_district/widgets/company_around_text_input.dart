import 'package:bavito_mobile_app/ui/common/input_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompanyAroundTextField extends StatelessWidget {
  final _phoneNumberController = TextEditingController();
  CompanyAroundTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 345.w,
      child: InputForm(
        title: 'Компании рядом',
        textField: Align(
          alignment: Alignment.centerLeft,
          child: TextField(
            controller: _phoneNumberController,
            readOnly: true,
            maxLength: 14,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              suffixIconConstraints: BoxConstraints.tight(const Size(40, 20)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0.r),
                borderSide: BorderSide.none,
              ),
              counterText: '',
              prefixText: '',
            ),
            onChanged: (phone) {
              //context.read<LoginCubit>().phoneChanged(fullPhoneNumber);
            },
            keyboardType: TextInputType.number,
          ),
        ),
      ),
    );
  }
}
