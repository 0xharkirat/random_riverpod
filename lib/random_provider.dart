import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class RandomNotifier extends Notifier<int> {
  @override
  int build() {
    return Random().nextInt(100);
  }

  void randomize() {
    int random = Random().nextInt(100);
    while (random == state) {
      random = Random().nextInt(100);
    }
    state = random;
  }
}

final randomProvider = NotifierProvider<RandomNotifier, int>(() {
  return RandomNotifier();
});
