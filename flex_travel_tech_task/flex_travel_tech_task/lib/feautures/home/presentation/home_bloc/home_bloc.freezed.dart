// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeState {
  double get totalGB;
  double get usedGB;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeStateCopyWith<HomeState> get copyWith =>
      _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeState &&
            (identical(other.totalGB, totalGB) || other.totalGB == totalGB) &&
            (identical(other.usedGB, usedGB) || other.usedGB == usedGB));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalGB, usedGB);

  @override
  String toString() {
    return 'HomeState(totalGB: $totalGB, usedGB: $usedGB)';
  }
}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) =
      _$HomeStateCopyWithImpl;
  @useResult
  $Res call({double totalGB, double usedGB});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalGB = null,
    Object? usedGB = null,
  }) {
    return _then(_self.copyWith(
      totalGB: null == totalGB
          ? _self.totalGB
          : totalGB // ignore: cast_nullable_to_non_nullable
              as double,
      usedGB: null == usedGB
          ? _self.usedGB
          : usedGB // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _HomeState extends HomeState {
  const _HomeState({this.totalGB = 10, this.usedGB = 3.5}) : super._();

  @override
  @JsonKey()
  final double totalGB;
  @override
  @JsonKey()
  final double usedGB;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            (identical(other.totalGB, totalGB) || other.totalGB == totalGB) &&
            (identical(other.usedGB, usedGB) || other.usedGB == usedGB));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalGB, usedGB);

  @override
  String toString() {
    return 'HomeState(totalGB: $totalGB, usedGB: $usedGB)';
  }
}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) _then) =
      __$HomeStateCopyWithImpl;
  @override
  @useResult
  $Res call({double totalGB, double usedGB});
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? totalGB = null,
    Object? usedGB = null,
  }) {
    return _then(_HomeState(
      totalGB: null == totalGB
          ? _self.totalGB
          : totalGB // ignore: cast_nullable_to_non_nullable
              as double,
      usedGB: null == usedGB
          ? _self.usedGB
          : usedGB // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
