import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CutomErrorWidget extends StatelessWidget {
  const CutomErrorWidget({super.key, required this.errMessage});
  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return Text(
      errMessage,
    style: Styles.textstyle18,);
  }
}