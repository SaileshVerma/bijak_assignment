import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bijak_assignment/app/my_app.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}
