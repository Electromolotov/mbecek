import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbecek/controllers/webViewHomeController.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewHome extends StatelessWidget {
  WebViewHome({Key? key}) : super(key: key);

  WebViewHomeController _webViewC = Get.put(WebViewHomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => Stack(children: [
            WebViewWidget(
              controller: WebViewController()
                ..setJavaScriptMode(JavaScriptMode.unrestricted)
                ..goBack()
                ..canGoBack()
                ..canGoForward()
                ..reload()
                ..goForward()
                ..setNavigationDelegate(NavigationDelegate(
                  onPageFinished: (url) {
                    _webViewC.isLoading.value = false;
                  },
                ))
                ..loadRequest(Uri.parse('https://mbecek.com')),
            ),
            _webViewC.isLoading.value
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Stack(),
          ]),
        ),
      ),
    );
  }
}
