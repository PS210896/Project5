import 'package:helloworld/models/post.dart';
import 'package:http/http.dart' as http;

class RemoteService 
{
  Future<List<Post>?> getPosts() async {
    var client = http.Client();

    var uri = Uri.parse('http://10.0.2.2:8000/api/tasks');
    var response = await client.get(uri);
    if(response.statusCode == 200) {
      var json = response.body;
     return postFromJson(json);
    }
  }
}