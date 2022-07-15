import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final TextEditingController controller;

  const SearchField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        fontSize: 18,
        height: 1,
      ),
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          labelText: 'Найти',
          labelStyle: const TextStyle(color: Colors.grey),
          prefixIcon: const Icon(Icons.search),
          suffixIcon: const Icon(Icons.mic),
          contentPadding: const EdgeInsets.all(0)),
    );
  }
}
