// 익명 함수(anonymous function)와 람다 함수(lambda function)
/* 익명 함수와 람다 함수는 둘 다 이름이 없고 1회성으로 사용되는 함수라는
 * 공통점을 가지고 있다. 일반적으로 다른 언어에서는 익명 함수와 람다 함수를
 * 구분하지만 다트는 이를 별도로 구분하지 않는다.
 **/
void main() {

  List<String> members = ["홍길동", "이순신", "임꺽정"];

  // 두 함수 모두 아래와 같이 다른 함수의 인수로 함수를 지정할 때 사용한다.
  final allMembers1 = members.reduce((value, element) {
    return value + ", " + element;
  });
  print(allMembers1);

  final allMembers2 = members.reduce(
          (value, element) => value  + ", " + element);
  print(allMembers2);
}