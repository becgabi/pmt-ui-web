// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_sheet_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeSheetItem extends TimeSheetItem {
  @override
  final int? id;
  @override
  final int hours;
  @override
  final int minutes;
  @override
  final String? description;
  @override
  final int projectId;
  @override
  final int? timeSheetId;

  factory _$TimeSheetItem([void Function(TimeSheetItemBuilder)? updates]) =>
      (new TimeSheetItemBuilder()..update(updates)).build();

  _$TimeSheetItem._(
      {this.id,
      required this.hours,
      required this.minutes,
      this.description,
      required this.projectId,
      this.timeSheetId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(hours, 'TimeSheetItem', 'hours');
    BuiltValueNullFieldError.checkNotNull(minutes, 'TimeSheetItem', 'minutes');
    BuiltValueNullFieldError.checkNotNull(
        projectId, 'TimeSheetItem', 'projectId');
  }

  @override
  TimeSheetItem rebuild(void Function(TimeSheetItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeSheetItemBuilder toBuilder() => new TimeSheetItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeSheetItem &&
        id == other.id &&
        hours == other.hours &&
        minutes == other.minutes &&
        description == other.description &&
        projectId == other.projectId &&
        timeSheetId == other.timeSheetId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), hours.hashCode), minutes.hashCode),
                description.hashCode),
            projectId.hashCode),
        timeSheetId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TimeSheetItem')
          ..add('id', id)
          ..add('hours', hours)
          ..add('minutes', minutes)
          ..add('description', description)
          ..add('projectId', projectId)
          ..add('timeSheetId', timeSheetId))
        .toString();
  }
}

class TimeSheetItemBuilder
    implements Builder<TimeSheetItem, TimeSheetItemBuilder> {
  _$TimeSheetItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _hours;
  int? get hours => _$this._hours;
  set hours(int? hours) => _$this._hours = hours;

  int? _minutes;
  int? get minutes => _$this._minutes;
  set minutes(int? minutes) => _$this._minutes = minutes;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _projectId;
  int? get projectId => _$this._projectId;
  set projectId(int? projectId) => _$this._projectId = projectId;

  int? _timeSheetId;
  int? get timeSheetId => _$this._timeSheetId;
  set timeSheetId(int? timeSheetId) => _$this._timeSheetId = timeSheetId;

  TimeSheetItemBuilder() {
    TimeSheetItem._defaults(this);
  }

  TimeSheetItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _hours = $v.hours;
      _minutes = $v.minutes;
      _description = $v.description;
      _projectId = $v.projectId;
      _timeSheetId = $v.timeSheetId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeSheetItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TimeSheetItem;
  }

  @override
  void update(void Function(TimeSheetItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TimeSheetItem build() {
    final _$result = _$v ??
        new _$TimeSheetItem._(
            id: id,
            hours: BuiltValueNullFieldError.checkNotNull(
                hours, 'TimeSheetItem', 'hours'),
            minutes: BuiltValueNullFieldError.checkNotNull(
                minutes, 'TimeSheetItem', 'minutes'),
            description: description,
            projectId: BuiltValueNullFieldError.checkNotNull(
                projectId, 'TimeSheetItem', 'projectId'),
            timeSheetId: timeSheetId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
