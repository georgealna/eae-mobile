import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../data/models/roles_and_security_response.dart';

class SecurityPolicySection extends StatelessWidget {
  final SecurityPolicy policy;
  final VoidCallback onUpdatePolicy;

  const SecurityPolicySection({
    super.key,
    required this.policy,
    required this.onUpdatePolicy,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _PolicySummaryCard(policy: policy, onUpdatePolicy: onUpdatePolicy),
        verticalSpace(12),
        _PolicyRow(
          label: 'MFA',
          value: policy.mfaEnabled ? 'Enabled' : 'Disabled',
        ),
        _PolicyRow(label: 'MFA method', value: policy.mfaMethod ?? '-'),
        _PolicyRow(
          label: 'Password min length',
          value: policy.passwordMinLength.toString(),
        ),
        _PolicyRow(
          label: 'Password expiry days',
          value: policy.passwordExpiryDays?.toString() ?? '-',
        ),
        _PolicyRow(
          label: 'Password history count',
          value: policy.passwordHistoryCount?.toString() ?? '-',
        ),
        _PolicyRow(
          label: 'Session timeout',
          value: '${policy.sessionTimeoutMinutes} minutes',
        ),
        _PolicyRow(
          label: 'Absolute timeout',
          value: '${policy.sessionAbsoluteTimeoutHours} hours',
        ),
        _PolicyRow(
          label: 'IP whitelisting',
          value: policy.ipWhitelistingEnabled ? 'Enabled' : 'Disabled',
        ),
        _PolicyRow(
          label: 'Allowed IP ranges',
          value: policy.allowedIpRanges?.join(', ') ?? '-',
        ),
        _PolicyRow(label: 'Updated at', value: policy.updatedAt),
      ],
    );
  }
}

class _PolicySummaryCard extends StatelessWidget {
  final SecurityPolicy policy;
  final VoidCallback onUpdatePolicy;

  const _PolicySummaryCard({
    required this.policy,
    required this.onUpdatePolicy,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(14.r),
      decoration: BoxDecoration(
        color: AppColors.neutralColor,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.tertiaryColor2),
      ),
      child: Row(
        children: [
          Container(
            width: 42.w,
            height: 42.w,
            decoration: BoxDecoration(
              color: AppColors.secondaryColor2,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(
              Icons.policy_outlined,
              color: AppColors.secondaryColor7,
            ),
          ),
          horizontalSpace(12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Security policy',
                  style: AppTextStyles.font14DarkGreySemiBold.copyWith(
                    color: AppColors.primaryColor9,
                  ),
                ),
                verticalSpace(4),
                Text(
                  policy.policyId,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.font12DarkGreyRegular.copyWith(
                    color: AppColors.tertiaryColor6,
                  ),
                ),
              ],
            ),
          ),
          IconButton.outlined(
            tooltip: 'Update policy',
            onPressed: onUpdatePolicy,
            icon: const Icon(Icons.edit_outlined),
          ),
        ],
      ),
    );
  }
}

class _PolicyRow extends StatelessWidget {
  final String label;
  final String value;

  const _PolicyRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.tertiaryColor2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: AppTextStyles.font12DarkGreySemiBold.copyWith(
              color: AppColors.tertiaryColor6,
            ),
          ),
          verticalSpace(4),
          Text(
            value,
            style: AppTextStyles.font14DarkGreyRegular.copyWith(
              color: AppColors.primaryColor9,
            ),
          ),
        ],
      ),
    );
  }
}
