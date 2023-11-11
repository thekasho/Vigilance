import 'dart:io';

checkNetwork() async {
  try {
    var result = await InternetAddress.lookup("google.com");
    if(result.isNotEmpty && result[0].rawAddress.isNotEmpty){
      return true;
    }
    else {
      return false;
    }
  }
  on SocketException catch(e) {
    print("Network Error: $e");
    return false;
  }
}