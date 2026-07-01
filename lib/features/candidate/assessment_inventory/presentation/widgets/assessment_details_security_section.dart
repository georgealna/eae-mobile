import 'package:flutter/material.dart';

import '../../data/models/assessment_inventory/assessment_inventory_response.dart';
import 'assessment_details_formatters.dart';
import 'assessment_details_rule_row.dart';
import 'assessment_details_section.dart';

class AssessmentDetailsSecuritySection extends StatelessWidget {
  final AssessmentExam exam;

  const AssessmentDetailsSecuritySection({super.key, required this.exam});

  @override
  Widget build(BuildContext context) {
    return AssessmentDetailsSection(
      title: 'Security Protocols',
      children: [
        AssessmentDetailsRuleRow(
          icon: Icons.videocam_outlined,
          label: 'Webcam required',
          value: formatAssessmentMapBool(
            exam.securityProtocols,
            'webcam_required',
          ),
        ),
        AssessmentDetailsRuleRow(
          icon: Icons.lock_outline,
          label: 'Lockdown browser',
          value: formatAssessmentMapBool(
            exam.securityProtocols,
            'lockdown_browser',
          ),
        ),
      ],
    );
  }
}
