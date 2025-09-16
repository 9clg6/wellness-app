import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:starter_kit/domain/entities/auth.entity.dart';

part 'auth.local.model.freezed.dart';
part 'auth.local.model.g.dart';

/// Auth Local Model
@freezed
abstract class AuthLocalModel with _$AuthLocalModel {
  /// Auth Remote Model constructor
  factory AuthLocalModel({@JsonKey(name: 'token') required String? token}) =
      _AuthLocalModel;

  /// fromEntity
  factory AuthLocalModel.fromEntity(AuthEntity params) {
    return AuthLocalModel(token: params.token);
  }

  /// fromJson
  factory AuthLocalModel.fromJson(Map<String, dynamic> json) =>
      _$AuthLocalModelFromJson(json);
}
