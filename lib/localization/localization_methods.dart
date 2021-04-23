import 'package:another_chance_app/localization/set_localization.dart';
import 'package:flutter/material.dart';

String getTranslated(BuildContext context, String key) {
  return SetLocalization.of(context).getTranslateValue(key);
}
