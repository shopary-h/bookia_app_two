import 'package:bookia_app_two/core/utils/colors.dart';
import 'package:flutter/material.dart';

TextStyle getHeadLineStyle(
        {double? fontSize, Color? color, FontWeight? fontWeight}) =>
    TextStyle(
        fontSize: fontSize ?? 18,
        color: color ?? AppColors.blackColor,
        fontWeight: fontWeight ?? FontWeight.bold);

TextStyle getTitleStyle(
        {double? fontSize, Color? color, FontWeight? fontWeight}) =>
    TextStyle(
        fontSize: fontSize ?? 16,
        color: color ?? AppColors.blackColor,
        fontWeight: fontWeight ?? FontWeight.bold);

TextStyle getBodyStyle(
        {double? fontSize, Color? color, FontWeight? fontWeight}) =>
    TextStyle(
        fontSize: fontSize ?? 14,
        color: color ?? AppColors.blackColor,
        fontWeight: fontWeight ?? FontWeight.bold);

TextStyle getSmallStyle(
        {double? fontSize, Color? color, FontWeight? fontWeight}) =>
    TextStyle(
        fontSize: fontSize ?? 12,
        color: color ?? AppColors.greyColor,
        fontWeight: fontWeight ?? FontWeight.bold);
