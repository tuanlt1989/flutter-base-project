import 'package:flutter/material.dart' hide Colors;
import 'package:flutter_app/values/colors.dart';

class BaseView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.primary,
      appBar: this.renderAppBar(),
      body: this.renderBody(),
    );
  }

  /// Render app bar
  Widget renderAppBar() {
    return AppBar(
      title: Text(
        'Hello',
      ), automaticallyImplyLeading: false
    );
  }

  /// Render body
  Widget renderBody() {
    return null;
  }

}
