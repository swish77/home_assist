import 'package:flutter/material.dart';

class ProviderModel {
  final String id;
  final String avatar;
  final String name;
  final String specialty;
  final double rating;
  final String experience;
  final String about;
  final List<String> servicesOffered;

  const ProviderModel({
    required this.id,
    required this.avatar,
    required this.name,
    required this.specialty,
    required this.rating,
    required this.experience,
    required this.about,
    required this.servicesOffered,
  });
}