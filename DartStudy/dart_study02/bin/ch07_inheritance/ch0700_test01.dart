// 객체지향 상속 extends, implements 테스트
import "ch0703_abstract01.dart";

class Phone {
  String? name;

  setName(String name) {
   this.name = name;
  }
}

class MyPhone1 implements Phone {
  @override
  String? name;

  @override
  setName(String name) {
    this.name = name;
  }
}

class MyPhone2 extends Phone {
  MyPhone2();
}

void main() {
  Phone p1 = MyPhone1();
  p1.setName("테스트");
  print(p1.name);

  Phone p2 = MyPhone2();
  p2.setName("호호");
  print(p2.name);
}