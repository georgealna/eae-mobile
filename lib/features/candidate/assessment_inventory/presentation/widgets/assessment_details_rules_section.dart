import 'package:flutter/material.dart';

import '../../data/models/assessment_inventory/assessment_inventory_response.dart';
import 'assessment_details_formatters.dart';
import 'assessment_details_rule_row.dart';
import 'assessment_details_section.dart';

class AssessmentDetailsRulesSection extends StatelessWidget {
  final AssessmentExam exam;

  const AssessmentDetailsRulesSection({super.key, required this.exam});

  @override
  Widget build(BuildContext context) {
    return AssessmentDetailsSection(
      title: 'Assessment Rules',
      children: [
        AssessmentDetailsRuleRow(
          icon: Icons.reviews_outlined,
          label: 'Review after submit',
          value: formatAssessmentBool(exam.allowReviewAfterSubmit),
        ),
        AssessmentDetailsRuleRow(
          icon: Icons.flag_outlined,
          label: 'Flagging for review',
          value: formatAssessmentBool(exam.allowFlaggingForReview),
        ),
        AssessmentDetailsRuleRow(
          icon: Icons.timer_outlined,
          label: 'Timer visible',
          value: formatAssessmentBool(exam.timerVisibleToCandidate),
        ),
        AssessmentDetailsRuleRow(
          icon: Icons.fact_check_outlined,
          label: 'Show correct answers',
          value: formatAssessmentBool(exam.showCorrectAnswersAfter),
        ),
      ],
    );
  }
}
