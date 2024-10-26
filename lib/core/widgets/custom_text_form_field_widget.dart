// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  DefaultFormField({
    super.key,
    this.controller,
    this.onFieldSubmitted,
    this.onSaved,
    this.onChanged,
    this.onTap,
    this.validator,
    this.keyboardType,
    this.hintText,
    this.label,
    this.prefixIcon,
    this.maxLines = 1,
    this.clickable = true,
  });
  TextEditingController? controller;
  String? Function(String?)? validator;
  void Function(String)? onFieldSubmitted;
  void Function(String)? onChanged;
  void Function(String?)? onSaved;
  void Function()? onTap;
  TextInputType? keyboardType;
  String? hintText;
  Widget? label;
  Widget? prefixIcon;
  int maxLines;
  bool clickable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        enabled: clickable,
        style: const TextStyle(color: Colors.black, fontSize: 18.0),
        validator: validator,
        controller: controller,
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
        onTap: onTap,
        onSaved: onSaved,
        keyboardType: keyboardType,
        autofocus: true,
        cursorColor: Colors.black,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hintText,
          label: label,
          prefixIcon: prefixIcon,
          hintStyle: TextStyle(color: Colors.grey.shade400),
          labelStyle: const TextStyle(color: Colors.black, fontSize: 22.0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
