import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors.dart';
import '../../data/models/assessment_session_models.dart';
import '../widgets/submission/assessment_session_submission_header.dart';
import '../widgets/submission/assessment_session_submission_process_section.dart';

class AssessmentSessionSubmissionScreen extends StatelessWidget {
  final AssessmentSessionViewData viewData;

  const AssessmentSessionSubmissionScreen({super.key, required this.viewData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(18.w, 0, 18.w, 18.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AssessmentSessionSubmissionHeader(viewData: viewData),
                    AssessmentSessionSubmissionProcessSection(
                      viewData: viewData,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
