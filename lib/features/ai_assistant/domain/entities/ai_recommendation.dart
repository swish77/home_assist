class AiRecommendation {
  final List<String> recommendedServiceIds;
  final String explanation;

  const AiRecommendation({required this.recommendedServiceIds,
    required this.explanation});


  @override
  String toString() {
    // TODO: implement toString
    return "Recommended Services : \n${recommendedServiceIds.toString()}\n\nExplanation: \n$explanation";
  }
}