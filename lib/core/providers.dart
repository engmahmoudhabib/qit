import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final hasError = StateProvider<bool>((val) => true);
final selectedCategory = StateProvider<String>((val) => '');

