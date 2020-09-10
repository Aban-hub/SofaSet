class ResponseModel {
  String message;
  bool success;
  DataBean data;

  ResponseModel({this.message, this.success, this.data});

  ResponseModel.fromJson(Map<String, dynamic> json) {    
    this.message = json['message'];
    this.success = json['success'];
    this.data = json['data'] != null ? DataBean.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }

}

class DataBean {
  String token;
  String branch;

  DataBean({this.token, this.branch});

  DataBean.fromJson(Map<String, dynamic> json) {    
    this.token = json['token'];
    this.branch = json['branch'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['branch'] = this.branch;
    return data;
  }
}
