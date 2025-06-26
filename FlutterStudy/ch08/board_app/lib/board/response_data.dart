/*
http 요청과 응답 데이터 파싱 참고
import "package:http/http.dart" as http;
import "dart:convert";

Uri url = Uri.parse("http://192.168.0.16:8080/boards/");

// 게시글 리스트를 GET 방식으로 요청하고 결과 데이터를 응답으로 받는다.
final response = await http.get(url);

// 서버에서 받은 response 객체의 속성
// response.statusCode : http 상태 코드 
// response.body : 응답 데이터를 json 데이터로 읽음 = {"pageCount":20,"startPage":1,"bList":[{"no":200,"title":"감사합니다. ...}, ]}
// response.body를 jsonDecode() 함수로 Dart 자료구조로 변환
var resBody = jsonDecode(response.body);

// response.bodyBytes : 응답 데이터를 binary 데이터로 읽음 = [123, 34, 112, 97, 103, ... ]
// response.bodyBytes 속성을 사용하면 utf8.decode() 함수로 json으로 변환해야 함
// 변환 데이터 : {"pageCount":20,"startPage":1,"bList":[{"no":200,"title":"감사합니다. ...}, ]}
var utf8Decoded = utf8.decode(response.bodyBytes);
// json으로 변환한 데이터를 jsonDecode() 함수로 Dart 자료구조로 변환
// {pageCount: 20, startPage: 1, bList: [{no: 200, title: 감사합니다.,... }, ] }
var resMap = jsonDecode(utf8Decoded);

print("statusCode : ${response.statusCode}" );
print("##### response body #####");
print(response.body);
print("##### response bodyBytes #####");
print(response.bodyBytes);
print("##### utf8Decoded #####");
print(utf8Decoded);
print("##### resBody #####");
print(resBody);
print("##### resMap #####");
print(resMap);
return resMap;

*/