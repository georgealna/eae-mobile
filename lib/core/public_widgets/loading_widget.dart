import 'package:flutter/material.dart';

import '../constants/colors.dart';

class LoadingWidget extends StatelessWidget {
  final Color? color;
  const LoadingWidget({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        children: [
          Padding(
            padding: EdgeInsets.all(3),
            child: SizedBox(
              height: 30,
              width: 30,
              child: Center(
                child: CircularProgressIndicator(
                  color: color ?? AppColors.primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
