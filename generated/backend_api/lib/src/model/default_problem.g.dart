// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_problem.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DefaultProblem extends DefaultProblem {
  @override
  final String? type;
  @override
  final String? title;
  @override
  final int? status;
  @override
  final String? detail;
  @override
  final String? instance;

  factory _$DefaultProblem([void Function(DefaultProblemBuilder)? updates]) =>
      (new DefaultProblemBuilder()..update(updates)).build();

  _$DefaultProblem._(
      {this.type, this.title, this.status, this.detail, this.instance})
      : super._();

  @override
  DefaultProblem rebuild(void Function(DefaultProblemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DefaultProblemBuilder toBuilder() =>
      new DefaultProblemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DefaultProblem &&
        type == other.type &&
        title == other.title &&
        status == other.status &&
        detail == other.detail &&
        instance == other.instance;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, type.hashCode), title.hashCode), status.hashCode),
            detail.hashCode),
        instance.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DefaultProblem')
          ..add('type', type)
          ..add('title', title)
          ..add('status', status)
          ..add('detail', detail)
          ..add('instance', instance))
        .toString();
  }
}

class DefaultProblemBuilder
    implements Builder<DefaultProblem, DefaultProblemBuilder> {
  _$DefaultProblem? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _detail;
  String? get detail => _$this._detail;
  set detail(String? detail) => _$this._detail = detail;

  String? _instance;
  String? get instance => _$this._instance;
  set instance(String? instance) => _$this._instance = instance;

  DefaultProblemBuilder() {
    DefaultProblem._defaults(this);
  }

  DefaultProblemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _title = $v.title;
      _status = $v.status;
      _detail = $v.detail;
      _instance = $v.instance;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DefaultProblem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DefaultProblem;
  }

  @override
  void update(void Function(DefaultProblemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DefaultProblem build() {
    final _$result = _$v ??
        new _$DefaultProblem._(
            type: type,
            title: title,
            status: status,
            detail: detail,
            instance: instance);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
