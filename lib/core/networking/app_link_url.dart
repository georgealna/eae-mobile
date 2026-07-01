class AppLinkUrl {
  static const String baseUrl =
      "http://alpha-engine.localhost:8081/api/v1/"; //alpha-engine.localhost
  //auth
  static const String login = "auth/login";
  static const String register = "auth/accept-invite";
  static const String forgotPassword = "auth/password/forgot";
  static const String resetPassword = "auth/password/reset";

  // assessment inventory
  static const String exams = "exams";
  static String examDetails(String examId) => "exams/$examId";
  static const String analyticsDashboard = "analytics/dashboard";
}
