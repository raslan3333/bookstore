import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NavProvider with ChangeNotifier, DiagnosticableTreeMixin {
  bool _hasAppBar = true;
  int _pageIndex = 0;
  int get pageIndex => _pageIndex;
  bool get hasAppBar => _hasAppBar;

  void setIndex(int i) {
    _pageIndex= i;
    notifyListeners();
  }

  void setAppBar() {
    _hasAppBar= _pageIndex == 3? false : true;
    notifyListeners();
  }
}