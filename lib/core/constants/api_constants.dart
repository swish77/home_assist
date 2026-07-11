class ApiConstants {
  static const geminiBaseUrl = "https://generativelanguage.googleapis.com/v1beta";

  static const geminiModel = "gemini-2.5-flash";

  static String generateContentUrl() => "$geminiBaseUrl/models/$geminiModel:generateContent";

  static const mockApiBaseUrl = "https://6a47caa4abfcbaade118f6df.mockapi.io/api";

}