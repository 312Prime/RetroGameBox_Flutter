import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../state_notifier/HomeStateNotifier.dart';

final homeProvider = StateNotifierProvider<HomeStateNotifier, List<String>>((ref) {
  return HomeStateNotifier([]);
});