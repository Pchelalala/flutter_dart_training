import "dart:async";
import 'dart:math';

Future<void> main() async {
  // 2. Create a new StreamController with the int type.
  final controller = StreamController<int>();

  // 2. Create methods for getting Sink and Stream from the StreamController.
  // Sink and Stream both are parts of the StreamController.
  // You add a data to the StreamController using Sink
  // which can be listened via the Stream.
  final subscription = controller.stream.listen((int data) {
    print(data);
  }, onError: (e) { // Handle any errors that could possibly occur
    print("Error!");
  });

  controller.sink.add(1);

// 2. Run 3 statements, delayed for 2 seconds each that are adding random
// int numbers to the stream. Listen to this updates and just print the results.
  Random random = Random();
  var randomDigit = random.nextInt(100);

  for(int i = 0; i < 3; i++){
    await Future.delayed(const Duration(seconds: 2), () {
      controller.sink.add(randomDigit);
      randomDigit = random.nextInt(100);
    });
  }

  controller.addError("Error!");

  // dispose the stream
  // This is done to prevent the testing environment from killing this process
  // before all objects from Stream have been processed
  await Future.delayed(const Duration(milliseconds: 500));

  // Calling its .cancel () method ends the subscription, freeing resources,
  // and warning your listener to call after
  // how it became unnecessary.
  subscription.cancel();
  controller.close();
}