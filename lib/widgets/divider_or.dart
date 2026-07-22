import 'package:flutter/material.dart';

import '../constants.dart';

class DividerOr extends StatelessWidget {
  const DividerOr({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: AppColors.divider,
            thickness: 1,
            height: 1,
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Text(
            "OR",
            style: TextStyle(
              color: AppColors.subtitle,
              fontSize: 13,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.8,
            ),
          ),
        ),

        const Expanded(
          child: Divider(
            color: AppColors.divider,
            thickness: 1,
            height: 1,
          ),
        ),
      ],
    );
  }
}