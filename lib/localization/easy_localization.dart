import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeAgo;

Future<EasyLocalization> easyLocalization(
    FutureOr<Widget> Function() builder) async {
  timeAgo.setLocaleMessages('fr', timeAgo.FrMessages());
  return EasyLocalization(
    supportedLocales: const [Locale('fr')],
    useOnlyLangCode: true,
    startLocale: const Locale('fr'),
    fallbackLocale: const Locale('fr'),
    path: 'lib/core/localization',
    child: await builder(),
  );
}
