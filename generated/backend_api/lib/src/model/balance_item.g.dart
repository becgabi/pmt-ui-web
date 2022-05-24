// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BalanceItem extends BalanceItem {
  @override
  final int? id;
  @override
  final Colleague? recorder;
  @override
  final Colleague creditor;
  @override
  final Colleague debitor;
  @override
  final String title;
  @override
  final int value;
  @override
  final String? comment;
  @override
  final BalanceItemStatus? status;
  @override
  final Date? timestamp;

  factory _$BalanceItem([void Function(BalanceItemBuilder)? updates]) =>
      (new BalanceItemBuilder()..update(updates)).build();

  _$BalanceItem._(
      {this.id,
      this.recorder,
      required this.creditor,
      required this.debitor,
      required this.title,
      required this.value,
      this.comment,
      this.status,
      this.timestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(creditor, 'BalanceItem', 'creditor');
    BuiltValueNullFieldError.checkNotNull(debitor, 'BalanceItem', 'debitor');
    BuiltValueNullFieldError.checkNotNull(title, 'BalanceItem', 'title');
    BuiltValueNullFieldError.checkNotNull(value, 'BalanceItem', 'value');
  }

  @override
  BalanceItem rebuild(void Function(BalanceItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BalanceItemBuilder toBuilder() => new BalanceItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BalanceItem &&
        id == other.id &&
        recorder == other.recorder &&
        creditor == other.creditor &&
        debitor == other.debitor &&
        title == other.title &&
        value == other.value &&
        comment == other.comment &&
        status == other.status &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), recorder.hashCode),
                                creditor.hashCode),
                            debitor.hashCode),
                        title.hashCode),
                    value.hashCode),
                comment.hashCode),
            status.hashCode),
        timestamp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BalanceItem')
          ..add('id', id)
          ..add('recorder', recorder)
          ..add('creditor', creditor)
          ..add('debitor', debitor)
          ..add('title', title)
          ..add('value', value)
          ..add('comment', comment)
          ..add('status', status)
          ..add('timestamp', timestamp))
        .toString();
  }
}

class BalanceItemBuilder implements Builder<BalanceItem, BalanceItemBuilder> {
  _$BalanceItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  ColleagueBuilder? _recorder;
  ColleagueBuilder get recorder => _$this._recorder ??= new ColleagueBuilder();
  set recorder(ColleagueBuilder? recorder) => _$this._recorder = recorder;

  ColleagueBuilder? _creditor;
  ColleagueBuilder get creditor => _$this._creditor ??= new ColleagueBuilder();
  set creditor(ColleagueBuilder? creditor) => _$this._creditor = creditor;

  ColleagueBuilder? _debitor;
  ColleagueBuilder get debitor => _$this._debitor ??= new ColleagueBuilder();
  set debitor(ColleagueBuilder? debitor) => _$this._debitor = debitor;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _value;
  int? get value => _$this._value;
  set value(int? value) => _$this._value = value;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  BalanceItemStatus? _status;
  BalanceItemStatus? get status => _$this._status;
  set status(BalanceItemStatus? status) => _$this._status = status;

  Date? _timestamp;
  Date? get timestamp => _$this._timestamp;
  set timestamp(Date? timestamp) => _$this._timestamp = timestamp;

  BalanceItemBuilder() {
    BalanceItem._defaults(this);
  }

  BalanceItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _recorder = $v.recorder?.toBuilder();
      _creditor = $v.creditor.toBuilder();
      _debitor = $v.debitor.toBuilder();
      _title = $v.title;
      _value = $v.value;
      _comment = $v.comment;
      _status = $v.status;
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BalanceItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BalanceItem;
  }

  @override
  void update(void Function(BalanceItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BalanceItem build() {
    _$BalanceItem _$result;
    try {
      _$result = _$v ??
          new _$BalanceItem._(
              id: id,
              recorder: _recorder?.build(),
              creditor: creditor.build(),
              debitor: debitor.build(),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'BalanceItem', 'title'),
              value: BuiltValueNullFieldError.checkNotNull(
                  value, 'BalanceItem', 'value'),
              comment: comment,
              status: status,
              timestamp: timestamp);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'recorder';
        _recorder?.build();
        _$failedField = 'creditor';
        creditor.build();
        _$failedField = 'debitor';
        debitor.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BalanceItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
