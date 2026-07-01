// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roles_and_security_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateRoleRequestBody _$CreateRoleRequestBodyFromJson(
  Map<String, dynamic> json,
) => CreateRoleRequestBody(
  roleName: json['role_name'] as String,
  description: json['description'] as String,
  roleCategory: json['role_category'] as String,
  isCustom: json['is_custom'] as bool,
);

Map<String, dynamic> _$CreateRoleRequestBodyToJson(
  CreateRoleRequestBody instance,
) => <String, dynamic>{
  'role_name': instance.roleName,
  'description': instance.description,
  'role_category': instance.roleCategory,
  'is_custom': instance.isCustom,
};

UpdateRoleRequestBody _$UpdateRoleRequestBodyFromJson(
  Map<String, dynamic> json,
) => UpdateRoleRequestBody(
  roleName: json['role_name'] as String,
  description: json['description'] as String,
  roleCategory: json['role_category'] as String,
);

Map<String, dynamic> _$UpdateRoleRequestBodyToJson(
  UpdateRoleRequestBody instance,
) => <String, dynamic>{
  'role_name': instance.roleName,
  'description': instance.description,
  'role_category': instance.roleCategory,
};

UpdateSecurityPolicyRequestBody _$UpdateSecurityPolicyRequestBodyFromJson(
  Map<String, dynamic> json,
) => UpdateSecurityPolicyRequestBody(
  mfaEnabled: json['mfa_enabled'] as bool,
  mfaMethod: json['mfa_method'] as String?,
  passwordMinLength: (json['password_min_length'] as num).toInt(),
  passwordRequireUppercase: json['password_require_uppercase'] as bool,
  passwordRequireLowercase: json['password_require_lowercase'] as bool,
  passwordRequireNumbers: json['password_require_numbers'] as bool,
  passwordRequireSpecialChars: json['password_require_special_chars'] as bool,
  passwordExpiryDays: (json['password_expiry_days'] as num?)?.toInt(),
  passwordHistoryCount: (json['password_history_count'] as num?)?.toInt(),
  sessionTimeoutMinutes: (json['session_timeout_minutes'] as num).toInt(),
  sessionAbsoluteTimeoutHours: (json['session_absolute_timeout_hours'] as num)
      .toInt(),
  sessionForceReauthOnPrivilegeChange:
      json['session_force_reauth_on_privilege_change'] as bool,
  ipWhitelistingEnabled: json['ip_whitelisting_enabled'] as bool,
  enableBiometricAuth: json['enable_biometric_auth'] as bool,
  enforceTls13Minimum: json['enforce_tls_1_3_minimum'] as bool,
  disableWeakCiphers: json['disable_weak_ciphers'] as bool,
  allowedIpRanges: (json['allowed_ip_ranges'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$UpdateSecurityPolicyRequestBodyToJson(
  UpdateSecurityPolicyRequestBody instance,
) => <String, dynamic>{
  'mfa_enabled': instance.mfaEnabled,
  'mfa_method': instance.mfaMethod,
  'password_min_length': instance.passwordMinLength,
  'password_require_uppercase': instance.passwordRequireUppercase,
  'password_require_lowercase': instance.passwordRequireLowercase,
  'password_require_numbers': instance.passwordRequireNumbers,
  'password_require_special_chars': instance.passwordRequireSpecialChars,
  'password_expiry_days': instance.passwordExpiryDays,
  'password_history_count': instance.passwordHistoryCount,
  'session_timeout_minutes': instance.sessionTimeoutMinutes,
  'session_absolute_timeout_hours': instance.sessionAbsoluteTimeoutHours,
  'session_force_reauth_on_privilege_change':
      instance.sessionForceReauthOnPrivilegeChange,
  'ip_whitelisting_enabled': instance.ipWhitelistingEnabled,
  'enable_biometric_auth': instance.enableBiometricAuth,
  'enforce_tls_1_3_minimum': instance.enforceTls13Minimum,
  'disable_weak_ciphers': instance.disableWeakCiphers,
  'allowed_ip_ranges': instance.allowedIpRanges,
};
