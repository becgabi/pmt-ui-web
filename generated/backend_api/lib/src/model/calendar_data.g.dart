// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CalendarData extends CalendarData {
  @override
  final BuiltList<String>? movedWorkdays;
  @override
  final BuiltList<String>? nonWorkingDays;

  factory _$CalendarData([void Function(CalendarDataBuilder)? updates]) =>
      (new CalendarDataBuilder()..update(updates)).build();

  _$CalendarData._({this.movedWorkdays, this.nonWorkingDays}) : super._();

  @override
  CalendarData rebuild(void Function(CalendarDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CalendarDataBuilder toBuilder() => new CalendarDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CalendarData &&
        movedWorkdays == other.movedWorkdays &&
        nonWorkingDays == other.nonWorkingDays;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, movedWorkdays.hashCode), nonWorkingDays.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CalendarData')
          ..add('movedWorkdays', movedWorkdays)
          ..add('nonWorkingDays', nonWorkingDays))
        .toString();
  }
}

class CalendarDataBuilder
    implements Builder<CalendarData, CalendarDataBuilder> {
  _$CalendarData? _$v;

  ListBuilder<String>? _movedWorkdays;
  ListBuilder<String> get movedWorkdays =>
      _$this._movedWorkdays ??= new ListBuilder<String>();
  set movedWorkdays(ListBuilder<String>? movedWorkdays) =>
      _$this._movedWorkdays = movedWorkdays;

  ListBuilder<String>? _nonWorkingDays;
  ListBuilder<String> get nonWorkingDays =>
      _$this._nonWorkingDays ??= new ListBuilder<String>();
  set nonWorkingDays(ListBuilder<String>? nonWorkingDays) =>
      _$this._nonWorkingDays = nonWorkingDays;

  CalendarDataBuilder() {
    CalendarData._defaults(this);
  }

  CalendarDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _movedWorkdays = $v.movedWorkdays?.toBuilder();
      _nonWorkingDays = $v.nonWorkingDays?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CalendarData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CalendarData;
  }

  @override
  void update(void Function(CalendarDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CalendarData build() {
    _$CalendarData _$result;
    try {
      _$result = _$v ??
          new _$CalendarData._(
              movedWorkdays: _movedWorkdays?.build(),
              nonWorkingDays: _nonWorkingDays?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'movedWorkdays';
        _movedWorkdays?.build();
        _$failedField = 'nonWorkingDays';
        _nonWorkingDays?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CalendarData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
