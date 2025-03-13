import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

Future<void> launchUri(String uri) async {
  final Uri url = Uri.parse(uri);
  try {
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('\x1B[31m Could not launch $url');
    }
  } catch (e) {
    debugPrint('\x1B[31m Error launching URL: $e');
  }
}
