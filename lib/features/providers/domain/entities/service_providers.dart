import 'package:flutter/material.dart';

class ProviderModel {
  final String avatar;
  final String name;
  final String specialty;
  final double rating;
  final String experience;
  final VoidCallback onTap;

  const ProviderModel({
    required this.avatar, required this.name, required this.rating, required this.experience, required this.onTap, required this.specialty});
}