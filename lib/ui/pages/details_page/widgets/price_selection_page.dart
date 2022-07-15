import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceSelectionPage extends StatefulWidget {
  const PriceSelectionPage({Key? key}) : super(key: key);

  @override
  State<PriceSelectionPage> createState() => _PriceSelectionPageState();
}

class _PriceSelectionPageState extends State<PriceSelectionPage> {
  late TextEditingController textEditingControllerFrom;
  late TextEditingController textEditingControllerTo;
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
    return Column(
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
              const Text('Цена'),
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
                controller: textEditingControllerFrom,
                decoration: const InputDecoration(
                  labelText: 'от',
                  suffixText: '₽',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextFormField(
                controller: textEditingControllerTo,
                decoration: const InputDecoration(
                  labelText: 'до',
                  suffixText: '₽',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            //TODO: передать параметры
          },
          child: const Text('Применить'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    textEditingControllerTo.dispose();
    textEditingControllerFrom.dispose();
    super.dispose();
  }
}
