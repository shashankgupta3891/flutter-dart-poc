import 'dart:developer';
import 'dart:math';

void main(List<String> args) {
  Stopwatch stopwatch = new Stopwatch()..start();
  forEachLoopTest();
  print('forLoopTest executed in ${stopwatch.elapsed.inMicroseconds}');
  forLoopTest();
  print('forLoopTest executed in ${stopwatch.elapsed.inMicroseconds}');
}

void forLoopTest() {
  // Stopwatch stopwatch = new Stopwatch()..start();
  List<int> list = List.generate(100, (index) {
    final random = Random();
    return random.nextInt(100);
  });

  for (var i = 0; i < list.length; i++) {
    final ele = list[i];
  }
  // print('forLoopTest executed in ${stopwatch.elapsed.inMicroseconds}');
}

void forEachLoopTest() {
  // Stopwatch stopwatch = new Stopwatch()..start();
  List<int> list = List.generate(100, (index) {
    final random = Random();
    return random.nextInt(100);
  });

  list.forEach((element) {
    // print(element);
  });

  // print('forEachLoopTest executed in ${stopwatch.elapsed.inMicroseconds}');
}
