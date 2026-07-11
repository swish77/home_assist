import 'package:home_assist/features/services/presentation/providers/services_provider.dart';
import 'package:home_assist/features/services/presentation/state/services_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'services_list_notifier.g.dart';

@riverpod
class ServicesListNotifier extends _$ServicesListNotifier{

  @override
  ServicesState build(){
    return const ServicesState();
  }

  Future<void> getServices(String categoryId) async{
    state = state.copyWith(
      isLoading : true,
      error : null
    );

    try{
      final allServices = await ref.read(getServicesUseCaseProvider).call();

      final filteredServices = allServices.where(
              (service) => service.category.id == categoryId).toList();

      state = state.copyWith(
        isLoading : false,
        services: filteredServices
      );
    }
    catch (e) {
      // print('ERROR: $e');
      // print(stackTrace);

      state = state.copyWith(
        isLoading: false,
        error: Exception(e.toString()),
      );
    }
  }

}