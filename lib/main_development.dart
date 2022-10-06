// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:user_preference/app/app.dart';
import 'package:user_preference/bootstrap.dart';
import 'package:user_preference/share_preferences/preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();

  unawaited(bootstrap(App.new));
}
