class AiGenerationConfig {

  static final Map<String, dynamic> generationConfig = {
    // "generationConfig": {
      "responseMimeType": "application/json",

      "responseSchema": {
        "type": "OBJECT",

        "properties": {
          "recommendedServiceIds": {
            "type": "ARRAY",
            "items": {
              "type": "STRING"
            }
          },

          "explanation": {
            "type": "STRING"
          }
        },

        "required": [
          "recommendedServiceIds",
          "explanation"
        ]
      }
    // }
  };
}