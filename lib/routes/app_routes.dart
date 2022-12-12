import 'package:flutter/material.dart';

import 'package:designs/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final Map<String, Widget Function(BuildContext)> routes = {
    'basic': (BuildContext context) => const BasicDesignScreen(),
    'scroll': (BuildContext context) => const ScrollDesignScreen(),
    'transaction': (BuildContext context) => const TransactionScreen(),
  };
}
