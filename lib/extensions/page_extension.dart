import 'package:flutter/material.dart';

extension PageX on Widget {
  Page get page => MaterialPage(child: this);
  PageRoute get pageRoute => MaterialPageRoute(builder: (context) => this);
}
