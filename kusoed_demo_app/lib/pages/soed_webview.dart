import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:kusoed_demo_app/core/constants.dart';

class SoedWebViewPage extends StatefulWidget {
  const SoedWebViewPage({super.key});

  @override
  State<SoedWebViewPage> createState() => _SoedWebViewPageState();
}

class _SoedWebViewPageState extends State<SoedWebViewPage> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
        Uri.parse('https://soed.ku.edu.np'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryBlue,
        foregroundColor: Colors.white,
        title: const Text('SOED Website'),
        centerTitle: true,
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
    