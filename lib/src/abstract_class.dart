import 'package:flutter_paystack_plus/src/stub.dart'
    if (dart.library.html) 'package:flutter_paystack_plus/src/for_web.dart'
    if (dart.library.io) 'package:flutter_paystack_plus/src/for_non_web.dart';
import 'package:flutter/material.dart';

abstract class MakePlatformSpecificPayment {
  Future makePayment({
    required String customerEmail,
    required String amount,
    required String reference,
    String? publicKey,
    String? secretKey,
    String? currency,
    BuildContext? context,
    required void Function() onClosed,
    required void Function() onSuccess,
  }) async {
    //
  }
  factory MakePlatformSpecificPayment() => makePlatformSpecificPayment();
}
