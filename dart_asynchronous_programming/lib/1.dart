import "dart:async";

// 1. Create a stream that counts from 5 to 0
Future<void> counter(Stream<int> stream) async {
  await for(var value in stream) {
    for(int i = 0; value >= i; value--){
      print(value);
    }
  }
}

Future<void> main() async {
  final stream = Stream<int>.fromIterable([5]);
  await counter(stream);
}