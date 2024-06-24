import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';
import 'package:web_view/model/search_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SearchController mutable = Provider.of<SearchController>(context);

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: InAppWebView(
              initialUrlRequest: URLRequest(
                url: WebUri(SearchData.platform.google),
              ),
            ),
            // child: InAppWebView(
            //   initialUrlRequest: URLRequest(
            //     url: WebUri(Provider.of<SearchController>(context).searchPage),
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}
