import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectionBottomSheetWrapper extends StatefulWidget {
  final String suffixText;
  final String title;

  const SelectionBottomSheetWrapper({
    required this.title,
    required this.suffixText,
    Key? key,
  }) : super(key: key);

  @override
  State<SelectionBottomSheetWrapper> createState() => _SelectionBottomSheetWrapper();
}

class _SelectionBottomSheetWrapper extends State<SelectionBottomSheetWrapper> {
  late final TextEditingController textEditingControllerFrom;
  late final TextEditingController textEditingControllerTo;
  late bool isTyped;

  @override
  void initState() {
    textEditingControllerFrom = TextEditingController();
    textEditingControllerTo = TextEditingController();
    isTyped = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      duration: Duration(milliseconds: 100),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.highlight_remove_outlined),
                ),
                Text(widget.title),
                TextButton(
                  onPressed: isTyped
                      ? () {
                          setState(() {
                            textEditingControllerFrom.clear();
                            textEditingControllerTo.clear();
                            isTyped = false;
                          });
                        }
                      : null,
                  child: Text(
                    'Сбросить',
                    style: TextStyle(
                      fontSize: 17.sp,
                      color: isTyped ? Colors.blue : Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  onChanged: (String val) {
                    setState(() {
                      isTyped = val.isNotEmpty;
                    });
                  },
                  controller: textEditingControllerFrom,
                  decoration: InputDecoration(
                    labelText: 'от',
                    suffixText: 'млн. ' + widget.suffixText,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextFormField(
                  onChanged: (String val) {
                    setState(() {
                      isTyped = val.isNotEmpty;
                    });
                  },
                  controller: textEditingControllerTo,
                  decoration: InputDecoration(
                    labelText: 'до',
                    suffixText: 'млн. ' + widget.suffixText,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(<String>[textEditingControllerFrom.text, textEditingControllerTo.text]);
            },
            child: const Text('Применить'),
          ),
        ],
      ),
    );
  }
}
