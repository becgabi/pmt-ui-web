// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_problem.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ValidationProblem extends ValidationProblem {
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
  @override
  final BuiltList<ValidationError>? errors;

  factory _$ValidationProblem(
          [void Function(ValidationProblemBuilder)? updates]) =>
      (new ValidationProblemBuilder()..update(updates)).build();

  _$ValidationProblem._(
      {this.type,
      this.title,
      this.status,
      this.detail,
      this.instance,
      this.errors})
      : super._();

  @override
  ValidationProblem rebuild(void Function(ValidationProblemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValidationProblemBuilder toBuilder() =>
      new ValidationProblemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidationProblem &&
        type == other.type &&
        title == other.title &&
        status == other.status &&
        detail == other.detail &&
        instance == other.instance &&
        errors == other.errors;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, type.hashCode), title.hashCode),
                    status.hashCode),
                detail.hashCode),
            instance.hashCode),
        errors.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ValidationProblem')
          ..add('type', type)
          ..add('title', title)
          ..add('status', status)
          ..add('detail', detail)
          ..add('instance', instance)
          ..add('errors', errors))
        .toString();
  }
}

class ValidationProblemBuilder
    implements Builder<ValidationProblem, ValidationProblemBuilder> {
  _$ValidationProblem? _$v;

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

  ListBuilder<ValidationError>? _errors;
  ListBuilder<ValidationError> get errors =>
      _$this._errors ??= new ListBuilder<ValidationError>();
  set errors(ListBuilder<ValidationError>? errors) => _$this._errors = errors;

  ValidationProblemBuilder() {
    ValidationProblem._defaults(this);
  }

  ValidationProblemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _title = $v.title;
      _status = $v.status;
      _detail = $v.detail;
      _instance = $v.instance;
      _errors = $v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidationProblem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ValidationProblem;
  }

  @override
  void update(void Function(ValidationProblemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ValidationProblem build() {
    _$ValidationProblem _$result;
    try {
      _$result = _$v ??
          new _$ValidationProblem._(
              type: type,
              title: title,
              status: status,
              detail: detail,
              instance: instance,
              errors: _errors?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        _errors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ValidationProblem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
