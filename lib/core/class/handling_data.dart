import 'package:flutter/material.dart';
import 'package:vig/core/class/statusrequest.dart';

import '../../helpers/helpers.dart';

class HandleRequest extends StatelessWidget {
  const HandleRequest(
      {super.key, required this.statusRequest, required this.widget});

  final StatusRequest statusRequest;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? const Center(
        child: CircularProgressIndicator(color: green))
        : statusRequest == StatusRequest.offlineFailure
        ? const Center(child: Text("You Are Offline"))
        : statusRequest == StatusRequest.serverFailure
        ? const Center(child: Text("Server Error"))
        : widget;
  }
}
