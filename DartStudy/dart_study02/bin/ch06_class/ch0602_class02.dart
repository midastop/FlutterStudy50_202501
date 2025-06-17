// 생성자(Constructor)
// https://dart-ko.dev/language/constructors
class Tv {
  String name;
  bool isPower = false;
  int? channel;

  // 생성자 이름은 클래스 이름과 동일해야 한다.
  //Tv(String name, int channel) {
  //  this.name = name; this.channel=channel; }

  // 위의 생성자를 중괄호 없이 콜론(:) 기호를 사용해 다음과 같이 정의할 수 있다.
  // 다트는 자바나 C++ 처럼 메소드 오버로딩을 지원하지 않는다.
  // Tv(String name) : this.name = name, this.channel = channel;

  // 위의 생성자를 다음과 같이 간단히 정의할 수 있으며 매개변수로 받은 값이
  // 자동으로 인스턴스 변수에 할당된다. this는 자신의 인스턴스를 가리키는 변수 이다.
  Tv(this.name, this.channel);

  void power() {
    isPower = !isPower;
  }

  int channelUp() {
    // 위에서 변수를 선언할 때 널 가능한 변수로 선언했기 때문에 아래와 같이
    // 널이 아님을 단언하고 + 연산을 하거나 반환 타입을 int?로 선언해야 한다.
    return channel! + 1;
  }

  int channelDown() {
    return channel! - 1;
  }
}

void main() {
  Tv tv = Tv("거실TV", 3);
  tv.power();
  print("현재 채널 : ${tv.channelUp()}");
}