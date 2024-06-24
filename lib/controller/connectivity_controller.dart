import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityController extends ChangeNotifier {
  ConnectivityController() {
    checkConnection();
  }

  bool isNotConnected = true;

  void checkConnection() {
    Connectivity().onConnectivityChanged.listen(
      (event) {
        isNotConnected = event.contains(ConnectivityResult.none);
      },
    );
    notifyListeners();
  }
}
