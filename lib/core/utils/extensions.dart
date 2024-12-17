import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

import '../../gen/l10n.dart';
import '../theme/app_theme.dart';
import '../theme/colors/app_colors.dart';

extension XBuildContext on BuildContext {
  S get s => S.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  AppColors get colors => AppTheme.colors;
}

extension XDateTime on DateTime {
  String get toddMM => intl.DateFormat('dd.MM').format(this);

  String get toddmmyyyy => intl.DateFormat('dd MMMM yyyy').format(this);
}

DocumentReference? firestoreDocRefFromJson(dynamic value) {
  if (value is DocumentReference) {
    return FirebaseFirestore.instance.doc(value.path);
  } else if (value is String) {
    return FirebaseFirestore.instance.doc(value);
  }
  return null;
}

List<DocumentReference> firestoreDocRefListFromJson(dynamic value) {
  final newList = <DocumentReference>[];
  if (value is List) {
    for (final element in value) {
      if (element is DocumentReference) {
        newList.add(FirebaseFirestore.instance.doc(element.path));
      } else if (value is String) {
        newList.add(FirebaseFirestore.instance.doc(element));
      }
    }
  }
  return newList;
}

dynamic firestoreDocRefToJson(dynamic value) => value;

extension PlatformLanguageCode on Platform {
  static String get languageCode => Platform.localeName.contains('_')
      ? Platform.localeName.split('_')[0]
      : Platform.localeName;
}
