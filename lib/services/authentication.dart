import 'dart:convert'; 
import 'package:http/http.dart' as http;

// class AuthenticationServices { 
   const String _baseApi = 'http://10.0.2.2:8000/api'; 
   String _bearerToken = '';

void loginUser (String email, String password) async { 
final response = await http.post( 
  Uri.parse('$_baseApi/login'), 
  headers: <String, String>{ 
    'Content-Type': 'application/json; charset=UTF-8', 
    }, 
    
    body: jsonEncode(<String, String>{ 
      'email': email, 
      'password': password 
        }),
       ); 
       print(response.statusCode);
       
       if (response.statusCode == 201) {
         print('Logged In');
         final result = jsonDecode(response.body); 

         print(response.body); _bearerToken = result['access_token']; 
         } 
         if (response.statusCode == 401) {
         print('Error');
         final result = jsonDecode(response.body); 
          
         } 


       //  return response.statusCode == 200;
}

void logout () async {
   final response = await http.post( 
    Uri.parse('$_baseApi/logout'), 
    headers: <String, String>{ 
      'Content-Type': 'application/json; charset=UTF-8', 
      'Authorization' : 'Bearer $_bearerToken' 
      },
       ); 
      //  return response.statusCode == 200;
     }

// }