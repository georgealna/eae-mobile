String formatAssessmentBool(bool value) => value ? 'Enabled' : 'Disabled';

String formatAssessmentMapBool(Map<String, dynamic>? map, String key) {
  final value = map?[key];
  if (value is bool) return formatAssessmentBool(value);
  return 'Not set';
}

String formatAssessmentDate(String? value) {
  if (value == null || value.isEmpty) return 'Not set';

  final parsed = DateTime.tryParse(value);
  if (parsed == null) return value;

  final local = parsed.toLocal();
  final year = local.year.toString().padLeft(4, '0');
  final month = local.month.toString().padLeft(2, '0');
  final day = local.day.toString().padLeft(2, '0');

  return '$year-$month-$day';
}
