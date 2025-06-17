// List의 메소드
void main() {

  List<String> fruits = ["사과", "배", "망고", "바나나"];

  // map() 메서드는 List 안의 값을 순서대로 순회하면서
  // 매개변수로 지정한 함수를 적용해 이터러블(Iterable) 객체로 반환
  final map1 = fruits.map((fruit) {
    return '과일 : $fruit';
  });
  print(map1);

  final map2 = fruits.map((fruit) => '과일 : $fruit');
  print(map2);

  // where() 메서드는 List 안의 값을 순서대로 순회하면서
  // 매개변수로 지정한 함수가 true를 반환하는 값을 이터러블(Iterable) 객체로 반환
  final where = fruits.where((fruit) => fruit == '사과' || fruit == '망고');
  print(where);

  // reduce() 메서드는 List 안의 값을 순서대로 순회하면서
  // 매개변수로 지정한 함수를 적용해 List의 요소와 같은 타입으로 반환한다.
  final reduce = fruits.reduce((first, elem) => elem + ", " + first);
  print(reduce);

  // fold() 메서드는 List 안의 값을 순서대로 순회하면서
  // 첫 번째 매개 변수로 지정한 값을 초깃값으로 사용해 두 번째 매개변수로 지정한
  // 함수를 적용해 fold() 메서드의 제네릭으로 지정한 타입을 반환한다.
  final fold = fruits.fold<int>(0, (first, elem) => first + elem.length);
  print(fold);
}