import 'package:vig/core/class/crud.dart';

class Requests {
  Crud crud;
  Requests(this.crud);

  postData(Map data, dynamic linkurl) async {
    var response = await crud.postData(linkurl, data);
    return response.fold((l) => l, (r) => r);
  }

  getData(dynamic linkurl) async {
    var response = await crud.getData(linkurl);
    return response.fold((l) => l, (r) => r);
  }

  getMapData(dynamic linkurl) async {
    var response = await crud.getMapData(linkurl);
    return response.fold((l) => l, (r) => r);
  }
}
