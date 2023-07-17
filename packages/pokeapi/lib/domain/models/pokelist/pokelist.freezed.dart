// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokelist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokeList<T> _$PokeListFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _PokeList<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$PokeList<T> {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<T> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokeListCopyWith<T, PokeList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeListCopyWith<T, $Res> {
  factory $PokeListCopyWith(
          PokeList<T> value, $Res Function(PokeList<T>) then) =
      _$PokeListCopyWithImpl<T, $Res, PokeList<T>>;
  @useResult
  $Res call({int count, String? next, String? previous, List<T> results});
}

/// @nodoc
class _$PokeListCopyWithImpl<T, $Res, $Val extends PokeList<T>>
    implements $PokeListCopyWith<T, $Res> {
  _$PokeListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokeListCopyWith<T, $Res>
    implements $PokeListCopyWith<T, $Res> {
  factory _$$_PokeListCopyWith(
          _$_PokeList<T> value, $Res Function(_$_PokeList<T>) then) =
      __$$_PokeListCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int count, String? next, String? previous, List<T> results});
}

/// @nodoc
class __$$_PokeListCopyWithImpl<T, $Res>
    extends _$PokeListCopyWithImpl<T, $Res, _$_PokeList<T>>
    implements _$$_PokeListCopyWith<T, $Res> {
  __$$_PokeListCopyWithImpl(
      _$_PokeList<T> _value, $Res Function(_$_PokeList<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$_PokeList<T>(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$_PokeList<T> implements _PokeList<T> {
  const _$_PokeList(
      {required this.count,
      this.next,
      this.previous,
      final List<T> results = const []})
      : _results = results;

  factory _$_PokeList.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_PokeListFromJson(json, fromJsonT);

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<T> _results;
  @override
  @JsonKey()
  List<T> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PokeList<$T>(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokeList<T> &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokeListCopyWith<T, _$_PokeList<T>> get copyWith =>
      __$$_PokeListCopyWithImpl<T, _$_PokeList<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_PokeListToJson<T>(this, toJsonT);
  }
}

abstract class _PokeList<T> implements PokeList<T> {
  const factory _PokeList(
      {required final int count,
      final String? next,
      final String? previous,
      final List<T> results}) = _$_PokeList<T>;

  factory _PokeList.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_PokeList<T>.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<T> get results;
  @override
  @JsonKey(ignore: true)
  _$$_PokeListCopyWith<T, _$_PokeList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
