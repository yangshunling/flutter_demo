import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

class Toast {
  void showToast(BuildContext context, String msg) {
    toast(context, msg);
  }

  void showNotify(BuildContext context, String msg) {
    showSimpleNotification(context, Text(msg));
  }

  void showNotifyWithBg(BuildContext context, String msg, Color bg) {
    showSimpleNotification(context, Text(msg), background: bg);
  }
}
