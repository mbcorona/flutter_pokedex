import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokelist.g.dart';
part 'pokelist.freezed.dart';

@Freezed(genericArgumentFactories: true)
sealed class PokeList<T> with _$PokeList<T> {
  const factory PokeList({
    required int count,
    String? next,
    String? previous,
    @Default([]) List<T> results,
  }) = _PokeList;

  factory PokeList.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$PokeListFromJson(json, fromJsonT);
}
