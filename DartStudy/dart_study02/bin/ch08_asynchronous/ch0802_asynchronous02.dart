// 동기 vs 비동기
void order() {
  print("음식을 주문 받음");
}

void cooking() {
  /* Future 클래스의 delayed() 함수는 지정한 시간(초) 동안 대기 한 후에 콜백 함수를
   * 실행한다. 서버에 요청을 보내고 결과를 받아 오거나, 시간이 많이 걸리는 작업을 아래에
   * 지정한 시간 만큼 처리해야 한다고 가정하자.
   **/
  Future.delayed(Duration(seconds: 3), () {
    print("음식을 조리 중...");
  });
}

void complete() {
  print("조리 완료");
}

void main() {
  /* 다음의 실행 순서가 코드가 작성된 순서대로 실행될 것이라고 생각되지만 실제로 실행
   * 결과를 보면 그렇지 못하다. cooking() 함수 안에서 사용하는 Future.delayed()
   * 함수는 비동기 처리 방식의 함수로 cooking() 함수가 완료될 때까지 complete() 함수가
   * 기다리지 않고 바로 실행되기 때문에 "조리 완료"가 먼저 출력된다.
   **/
  order();
  cooking();
  complete();
}
/*
  //실행결과
  음식을 주문 받음
  조리 완료
  음식을 조리 중...
 */