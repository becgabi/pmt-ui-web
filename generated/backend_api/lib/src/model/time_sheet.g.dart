// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_sheet.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeSheet extends TimeSheet {
  @override
  final int? id;
  @override
  final Date workedDate;
  @override
  final int sumHours;
  @override
  final int sumMinutes;
  @override
  final int colleagueId;
  @override
  final BuiltList<TimeSheetItem>? timeSheetItems;

  factory _$TimeSheet([void Function(TimeSheetBuilder)? updates]) =>
      (new TimeSheetBuilder()..update(updates)).build();

  _$TimeSheet._(
      {this.id,
      required this.workedDate,
      required this.sumHours,
      required this.sumMinutes,
      required this.colleagueId,
      this.timeSheetItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        workedDate, 'TimeSheet', 'workedDate');
    BuiltValueNullFieldError.checkNotNull(sumHours, 'TimeSheet', 'sumHours');
    BuiltValueNullFieldError.checkNotNull(
        sumMinutes, 'TimeSheet', 'sumMinutes');
    BuiltValueNullFieldError.checkNotNull(
        colleagueId, 'TimeSheet', 'colleagueId');
  }

  @override
  TimeSheet rebuild(void Function(TimeSheetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeSheetBuilder toBuilder() => new TimeSheetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeSheet &&
        id == other.id &&
        workedDate == other.workedDate &&
        sumHours == other.sumHours &&
        sumMinutes == other.sumMinutes &&
        colleagueId == other.colleagueId &&
        timeSheetItems == other.timeSheetItems;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), workedDate.hashCode),
                    sumHours.hashCode),
                sumMinutes.hashCode),
            colleagueId.hashCode),
        timeSheetItems.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TimeSheet')
          ..add('id', id)
          ..add('workedDate', workedDate)
          ..add('sumHours', sumHours)
          ..add('sumMinutes', sumMinutes)
          ..add('colleagueId', colleagueId)
          ..add('timeSheetItems', timeSheetItems))
        .toString();
  }
}

class TimeSheetBuilder implements Builder<TimeSheet, TimeSheetBuilder> {
  _$TimeSheet? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  Date? _workedDate;
  Date? get workedDate => _$this._workedDate;
  set workedDate(Date? workedDate) => _$this._workedDate = workedDate;

  int? _sumHours;
  int? get sumHours => _$this._sumHours;
  set sumHours(int? sumHours) => _$this._sumHours = sumHours;

  int? _sumMinutes;
  int? get sumMinutes => _$this._sumMinutes;
  set sumMinutes(int? sumMinutes) => _$this._sumMinutes = sumMinutes;

  int? _colleagueId;
  int? get colleagueId => _$this._colleagueId;
  set colleagueId(int? colleagueId) => _$this._colleagueId = colleagueId;

  ListBuilder<TimeSheetItem>? _timeSheetItems;
  ListBuilder<TimeSheetItem> get timeSheetItems =>
      _$this._timeSheetItems ??= new ListBuilder<TimeSheetItem>();
  set timeSheetItems(ListBuilder<TimeSheetItem>? timeSheetItems) =>
      _$this._timeSheetItems = timeSheetItems;

  TimeSheetBuilder() {
    TimeSheet._defaults(this);
  }

  TimeSheetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _workedDate = $v.workedDate;
      _sumHours = $v.sumHours;
      _sumMinutes = $v.sumMinutes;
      _colleagueId = $v.colleagueId;
      _timeSheetItems = $v.timeSheetItems?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeSheet other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TimeSheet;
  }

  @override
  void update(void Function(TimeSheetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TimeSheet build() {
    _$TimeSheet _$result;
    try {
      _$result = _$v ??
          new _$TimeSheet._(
              id: id,
              workedDate: BuiltValueNullFieldError.checkNotNull(
                  workedDate, 'TimeSheet', 'workedDate'),
              sumHours: BuiltValueNullFieldError.checkNotNull(
                  sumHours, 'TimeSheet', 'sumHours'),
              sumMinutes: BuiltValueNullFieldError.checkNotNull(
                  sumMinutes, 'TimeSheet', 'sumMinutes'),
              colleagueId: BuiltValueNullFieldError.checkNotNull(
                  colleagueId, 'TimeSheet', 'colleagueId'),
              timeSheetItems: _timeSheetItems?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeSheetItems';
        _timeSheetItems?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TimeSheet', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
