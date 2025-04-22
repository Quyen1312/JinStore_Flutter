import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_application_ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter_application_ecommerce/utils/constants/colors.dart';

class AppPrimaryHeaderContainer extends StatelessWidget {
  const AppPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AppCurvedEdgeWidget(
      child: SizedBox(
        height: 400,
        child: Container(
                color: AppColors.primaryColor,
                padding: const EdgeInsets.only(bottom: 0),
          child: Stack(
            children: [
              Positioned(top: -150, right: -250, child: AppCircularContainer(backgroundColor: AppColors.lightTextColor.withOpacity(0.1))),
              Positioned(top: 100, right: -300, child: AppCircularContainer(backgroundColor: AppColors.lightTextColor.withOpacity(0.1))),
              child,
            ],
          ),
        ),
      ),    
    );
  }
}