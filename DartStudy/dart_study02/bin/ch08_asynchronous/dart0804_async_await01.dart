// async와 await 01
// https://dart-ko.dev/codelabs/async-await
Future<void> order() async {
  print("음식을 주문 받음");
  /*
  await Future.delayed(Duration(seconds: 4), () {
    print("음식을 주문 받음");
  });
  */
}

/* 여기서 Future 클래스의 인스턴스를 future라고 하자. 이 인스턴스는 비동기 작업의 결과를
 * 나타내며 미완료(uncompleted)와 완료(completed) 2가지 상태를 가진다. 미완료는
 * future가 값을 생성하기 전의 상태를 나타낸다. 완료는 비동기 작업이 성공적으로 완료되면
 * future는 값으로 완료되고 그렇지 못하면 에러로 완료된다. 값으로 완료되면 Future<T>와
 * 같이 future는 T 타입의 값으로 완료된다. 예를 들면 Future<String> 타입의 future는
 * 문자열 값을 생성한다. 만약 Future<void>라면 사용가능한 값을 생성하지 않는다.
 *
 * Future 클래스의 이름에서와 같이 "미래"라는 의미대로 미래에 비동기 작업의 결과로 받을
 * 값을 의미한다. 비동기 처리를 위한 함수의 반환 값은 Future<T>와 같이 제넥릭을 사용해
 * 미래에 받을 값의 데이터 타입을 지정해 사용하면 된다. 아래는 함수의 반환 값이 없기 때문에
 * 제네릭으로 <void>를 사용했다. 그리고 async 키워드를 함수의 매개변수 정의와 함수 본문
 * 사이에 지정하고 함수의 본문 안에서 실행 순서를 맞추기 위해서 대기 시킬 비동기 함수의
 * 호출 구문 앞에 await 키워드를 지정하면 된다.
 **/
Future<void> cooking() async {
  await Future.delayed(Duration(seconds: 3), () {
    print("음식을 조리 중...");
  });
}

void complete() {
  print("조리 완료");
}

void main() async {
  // await은 Future<T>를 반환하는 함수의 호출 구문 앞에 붙일 수 있다.
  await order();
  await cooking();
  complete();
}
/*
  //실행결과
  음식을 주문 받음
  음식을 조리 중...
  조리 완료
 */