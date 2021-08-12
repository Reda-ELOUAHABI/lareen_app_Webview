// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:lareen_app/SplashScreen.dart';
import 'package:webview_flutter/platform_interface.dart';

import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {





  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: WebView(
            onWebResourceError: (WebResourceError webviewerrr) {
              Navigator.push(context, MaterialPageRoute(builder: (_) => SplashScreen()));
              print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nHandle your Error Page here "
                  "------------------------------------------ \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
            },
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: "https://r3b07.com/",

            onPageFinished: (String url) {
              print('\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nPage finished loading: '
                  '------------------------------------------------------------ \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n');
            },
          ),
        ),
      ),
    );
  }
}