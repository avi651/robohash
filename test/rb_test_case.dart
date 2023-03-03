import 'package:flutter_test/flutter_test.dart';
import 'package:nock/nock.dart';
import 'package:http/http.dart' as http;

void main() {
  setUpAll(() {
    nock.init();
  });

  setUp(() {
    nock.cleanAll();
  });

  test('Robot API Test', () async {
    final interceptor = nock('https://jsonplaceholder.typicode.com').get('/users')
      ..reply(
        200,
        'id',
      );

    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    expect(interceptor.isDone, true);
    expect(response.statusCode, 200);
    expect(response.body, 'id');
  });
}