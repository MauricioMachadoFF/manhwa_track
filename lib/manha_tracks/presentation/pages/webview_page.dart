import 'package:flutter/material.dart';
import 'package:manhwa_track/shared/presentation/base_background_gradient.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../design_sytem.dart/design_system.dart';

class ManhwaReadingPage extends StatefulWidget {
  const ManhwaReadingPage({
    super.key,
    required this.url,
  });

  final String url;

  @override
  State<ManhwaReadingPage> createState() => _ManhwaReadingPageState();
}

class _ManhwaReadingPageState extends State<ManhwaReadingPage> {
  late final WebViewController _controller;

  bool isLoading = true;
  bool error = false;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController();
    _controller.setNavigationDelegate(NavigationDelegate(
      onWebResourceError: (_) {
        setState(() {
          error = true;
          isLoading = false;
        });
      },
      onPageFinished: (url) {
        setState(() {
          isLoading = false;
        });
      },
    ));
    _controller.setJavaScriptMode(JavaScriptMode.unrestricted);
    _controller.loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return BaseBackgroundGradient(
      content: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: ManhwaIconButton(
            icon: Icons.chevron_left_rounded,
            iconSize: sizeMedium,
            iconColor: white,
            onTap: () async => await _goBack(),
          ),
          actions: [
            ManhwaIconButton(
              icon: Icons.chevron_right_rounded,
              iconSize: sizeMedium,
              iconColor: white,
              onTap: () async => await _goFoward(),
            ),
          ],
        ),
        body: isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : WebViewWidget(controller: _controller),
      ),
    );
  }

  Future<void> _goBack() async {
    final hasBackStack = await _controller.canGoBack();
    if (hasBackStack) {
      _controller.goBack();
      return;
    }
    if (!mounted) return;
    Navigator.of(context).pop();
  }

  Future<void> _goFoward() async {
    final hasfrontStack = await _controller.canGoForward();
    if (hasfrontStack) {
      _controller.goForward();
      return;
    }
  }
}
