
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class NewsPage extends StatefulWidget {
  const NewsPage({super.key, required this.content});
  final String content;
  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  bool isLoading = true;
  var loadingPercentage = 0;
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setNavigationDelegate(NavigationDelegate(
        // onPageStarted: (url) {
        //   setState(() {
        //     isLoading = true;
        //   });
        // },
        onProgress: (progress) {
          setState(() {
            isLoading = true;
          });
        },
        onPageFinished: (url) {
          setState(() {
            isLoading = false;
          });
        },
      ))
      ..loadRequest(
        Uri.parse(widget.content),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            WebViewWidget(
              controller: controller,
            ),
            if (isLoading)
              Center(
                child: CircularProgressIndicator(
                  color: Colors.yellow[800],
                ),
              ),
          ],
        ),
      ),
    );
  }
}


