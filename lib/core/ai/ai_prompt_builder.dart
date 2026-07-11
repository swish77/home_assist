import 'package:home_assist/features/services/domain/entities/service.dart';

class AiPromptBuilder {

  static String build(String userProblem,  List<Service> services,){

    final availableServices = services
        .map((service) => '${service.id} - ${service.name}')
        .join('\n');

    return '''
    You are an AI assistant for HomeAssist.

    Recommend only services from the following list:
    
    $availableServices
    
    The user problem is:
    
    $userProblem
    
    Return ONLY the service IDs of the most relevant one or two services and provide a brief explanation.
    ''';
  }
}