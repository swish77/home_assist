import 'package:home_assist/features/services/domain/entities/service.dart';

class ServicesState {
  final bool isLoading;
  final List<Service> services;
  final Exception? error;

  const ServicesState({
    this.isLoading = false,
    this.services = const [],
    this.error,
  });

  ServicesState copyWith({
    bool? isLoading,
    List<Service>? services,
    Exception? error,
  }) {
    return ServicesState(
      isLoading: isLoading ?? this.isLoading,
      services: services ?? this.services,
      error: error,
    );
  }
}