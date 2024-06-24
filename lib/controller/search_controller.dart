import 'package:flutter/material.dart';
import 'package:web_view/model/search_model.dart';

class SearchController extends ChangeNotifier {
  String searchPage = SearchData.platform.google;

  List<String> bookmark = [];

  void changeSearchPage(String val) {
    searchPage = val;
    notifyListeners();
  }

  void addBookmark(String val) {
    bookmark.add(val);
    notifyListeners();
  }
}
