// 스트림(Stream) - BroadcastStream
import 'dart:async';

void main() {

  // 아래와 같이 BroadcastStream을 생성할 수 있다.
  final controller1 =  StreamController();;
  final bsStream1 = controller1.stream.asBroadcastStream();

  final controller2 = StreamController.broadcast();
  final bsStream2 = controller2.stream;

  // BroadcastStream은 하나의 Stream에 여러 구독자(listener)를 등록할 수 있다.
  final streamListener1 = bsStream1.listen(print);
  final streamListener2 = bsStream1.listen((val) {
    print("listen2 : $val");
  });

  controller1.add("홍길동");
  controller1.add("임꺽정");
  controller1.sink.add("어머나");

  // Stream 종료
  controller1.close();
}