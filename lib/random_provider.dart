import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

/*
// can also be used with StateNotifierProvider like so:
class RandomNotifier extends StateNotifier<int> {
  RandomNotifier() : super(Random().nextInt(100));

  void randomize() {
    int random = Random().nextInt(100);
    while (random == state) {
      random = Random().nextInt(100);
    }
    state = random;
  }
}

final randomProvider = StateNotifierProvider<RandomNotifier, int>((ref) {
  return RandomNotifier();
});
*/




// Notifier is recommended in Rivepod 2.0 onwards
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


/// Exposing the [RandomNotifier] to the provider usign [NotifierProvider]
/// also see [ref] is not passed as an argument to the NotifierProvier as it is already available in the Notifier class itself
final randomProvider = NotifierProvider<RandomNotifier, int>(() {
  return RandomNotifier();
});
