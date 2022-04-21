import 'package:equatable/equatable.dart';

class LoginErrorResponse extends Equatable {
  String? message;
  ModelState? modelState;

  LoginErrorResponse({this.message, this.modelState});

  LoginErrorResponse.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
    modelState = json['ModelState'] != null
        ? new ModelState.fromJson(json['ModelState'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Message'] = this.message;
    if (this.modelState != null) {
      data['ModelState'] = this.modelState!.toJson();
    }
    return data;
  }

  @override
  List<Object?> get props => [
        message,
        modelState,
      ];
}

class ModelState extends Equatable {
  List<String>? logEmail;

  ModelState({
    this.logEmail,
  });

  ModelState.fromJson(Map<String, dynamic> json) {
    logEmail = json['log.email'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['log.email'] = this.logEmail;
    return data;
  }

  @override
  List<Object?> get props => [
        logEmail,
      ];
}
