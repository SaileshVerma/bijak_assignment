import 'package:flutter/material.dart';

import 'package:bijak_assignment/app/my_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}
