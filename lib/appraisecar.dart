import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webapp_project/webwidget.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

class AppraiseCar extends StatefulWidget {
  @override
  _AppraiseCarState createState() => _AppraiseCarState();
}

class _AppraiseCarState extends State<AppraiseCar> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "CAR HUB",
          style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: const Color(0xffff9503)),
        ),
        centerTitle: true,
      ),
      body: MyWebView(
        url: 'https://carhubph.com/appraise-my-car/',
      ),
    );
  }
}
