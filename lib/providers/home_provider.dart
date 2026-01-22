import 'package:flutter_riverpod/flutter_riverpod.dart';

// HomePage 的计数状态 Provider
final homeCountProvider = StateProvider<int>((ref) => 0);
