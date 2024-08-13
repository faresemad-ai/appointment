import 'package:json_annotation/json_annotation.dart';
 part 'api_error_model.g.dart';
 
@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int? code;

  ApiErrorModel({
    required this.message,
    this.code,
  });
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}





// *************************************************

// ApiErrorModel _$ApiErrorModelFromJson(Map<String, dynamic> json) =>
//     ApiErrorModel(
//       message: json['message'] as String?,
//       code: json['code'] as int?,
//     );

// Map<String, dynamic> _$ApiErrorModelToJson(ApiErrorModel instance) =>
//     <String, dynamic>{
//       'message': instance.message,
//       'code': instance.code,
//     };