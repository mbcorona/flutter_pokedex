// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokelist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokeList<T> _$$_PokeListFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_PokeList<T>(
      count: json['count'] as int,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)?.map(fromJsonT).toList() ??
          const [],
    );

Map<String, dynamic> _$$_PokeListToJson<T>(
  _$_PokeList<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results.map(toJsonT).toList(),
    };
