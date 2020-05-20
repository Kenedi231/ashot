import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../shared/common_styles.dart';
import 'widgets/cart_widget.dart';
import 'widgets/catalog_page_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: SlidingUpPanel(
          minHeight: 50,
          backdropEnabled: true,
          borderRadius: CommonStyles.slidePanelRadius,
          body: CatalogPageWidget(),
          panel: CartWidget(),
        ),
      ),
    );
  }
}
