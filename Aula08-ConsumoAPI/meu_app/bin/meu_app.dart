import 'package:http/http.dart';

void main() {
  //requestData();
  requestDataAsync();
}

requestData() {
  String url =
      "https://gist.githubusercontent.com/andreaortega10/1d71ced505ad55fcecfd24d6a93ffdea/raw/80239f5fa0a0c0251ae8f2023b8012c3cac47084/filmes.json";

  Future<Response> filmes = get(Uri.parse(url));
  print(filmes);

  filmes.then((Response response) {
    print(response);
    print(response.body);
  });

  print("Último código");
}

requestDataAsync() async {
  String url =
      "https://gist.githubusercontent.com/andreaortega10/1d71ced505ad55fcecfd24d6a93ffdea/raw/80239f5fa0a0c0251ae8f2023b8012c3cac47084/filmes.json";

  Response response = await get(Uri.parse(url));

  print(response.body);
  print("Último código");
}
