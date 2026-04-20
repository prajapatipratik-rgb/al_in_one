import 'package:al_in_one/common/styles/widgets/custom_shapes/containers/circular_container.dart';
import 'package:al_in_one/common/styles/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:al_in_one/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primaryColor,
        child: Stack(
          children: [
            // Background decorations
            Positioned(
              top: -150,
              right: -250,
              child: TCircularContainer(
                // ignore: deprecated_member_use
                backgroundColor: TColors.textWhite.withOpacity(0.1),
                margin: null,
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: TCircularContainer(
                // ignore: deprecated_member_use
                backgroundColor: TColors.textWhite.withOpacity(0.1),
                margin: null,
              ),
            ),

            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
