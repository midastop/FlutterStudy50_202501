// enum
/* enum은 한 변수의 값을 몇 가지 옵션으로 제한하는 기능
 * 문자열로 대체할 수 있지만 enum은 IDE에서 자동완성이 지원되고
 * 옵션이 정해져 있기 때문에 정확한 값을 선택할 수 있다.
 **/
enum Grade {
  A,
  B,
  C,
  D,
  F,
}

enum DeliveryStatus {
  preparing,
  delivery,
  complete,
}

void main() {
  Grade grade = Grade.A;
  print(grade);

  DeliveryStatus status = DeliveryStatus.delivery;
  print(status);
}

