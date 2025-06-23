// 믹스인(mixin)
/* 믹스인은 특정 클래스에서 필요한 기능만 골라서 다른 클래스에서 사용할 수 있는 기능이다.
 * 믹스인을 사용하면 클래스를 직접 상속 받지 않고 여러 클래스에 있는 기능(메서드, 속성)을
 * 선택적으로 가져와 하나의 클래스에 결합해 사용할 수 있도록 해준다.
 * https://dart-ko.dev/language/mixins
 **/
class FeaturePhone {
  String name;
  FeaturePhone(this.name);

  void sendPhone() {
    print("전화를 건다.");
  }

  void receivePhone() {
    print("전화를 받는다.");
  }
}

// on 키워드를 지정해 이 믹스인을 사용할 수 있는 타입을 제한할 수도 있다.
mixin ShortMessageService on FeaturePhone{
  bool isEnabled = true;

  void sendSMS(String msg) {
    print("$msg 문자를 보낸다.");
  }

  String receiveSMS(String msg) {
    return "$msg 문자를 받는다.";
  }
}

// 다음과 같이 믹스인만 정의하여 여러 클래스에서 사용할 수 있도록 했다.
mixin WebSurfing {
  void surfing() {
    print("브라우저를 화면에 띄운다.");
  }
}

/* ShortMessageService 믹스인은 FeaturePhone 타입만 사용할 수 있기 때문에 SmartPhone
 * 클래스에서 상속하도록 했다. 그리고 하나의 클래스에서 여러 믹스인을 사용할  수 있으므로
 * with 구문에 여러 개의 믹스인을 콤마(,)로 구분해 지정할 수 있다.
 **/
class SmartPhone extends FeaturePhone with ShortMessageService, WebSurfing {
  SmartPhone(super.name);
}

void main() {
  SmartPhone sp = SmartPhone("스마트 폰");
  // 상속 받은 메소드 호출
  sp.sendPhone();

  // 믹스인에서 가져온 메소드 호출
  sp.sendSMS("안부 메시지");
  sp.surfing();
}