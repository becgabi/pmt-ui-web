// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Partner extends Partner {
  @override
  final int? id;
  @override
  final String name;
  @override
  final String? taxNumber;
  @override
  final String? registrationNumber;
  @override
  final String? headquarters;
  @override
  final Date? cooperationStart;
  @override
  final CooperationStatus? cooperationStatus;

  factory _$Partner([void Function(PartnerBuilder)? updates]) =>
      (new PartnerBuilder()..update(updates)).build();

  _$Partner._(
      {this.id,
      required this.name,
      this.taxNumber,
      this.registrationNumber,
      this.headquarters,
      this.cooperationStart,
      this.cooperationStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'Partner', 'name');
  }

  @override
  Partner rebuild(void Function(PartnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PartnerBuilder toBuilder() => new PartnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Partner &&
        id == other.id &&
        name == other.name &&
        taxNumber == other.taxNumber &&
        registrationNumber == other.registrationNumber &&
        headquarters == other.headquarters &&
        cooperationStart == other.cooperationStart &&
        cooperationStatus == other.cooperationStatus;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), name.hashCode),
                        taxNumber.hashCode),
                    registrationNumber.hashCode),
                headquarters.hashCode),
            cooperationStart.hashCode),
        cooperationStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Partner')
          ..add('id', id)
          ..add('name', name)
          ..add('taxNumber', taxNumber)
          ..add('registrationNumber', registrationNumber)
          ..add('headquarters', headquarters)
          ..add('cooperationStart', cooperationStart)
          ..add('cooperationStatus', cooperationStatus))
        .toString();
  }
}

class PartnerBuilder implements Builder<Partner, PartnerBuilder> {
  _$Partner? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _taxNumber;
  String? get taxNumber => _$this._taxNumber;
  set taxNumber(String? taxNumber) => _$this._taxNumber = taxNumber;

  String? _registrationNumber;
  String? get registrationNumber => _$this._registrationNumber;
  set registrationNumber(String? registrationNumber) =>
      _$this._registrationNumber = registrationNumber;

  String? _headquarters;
  String? get headquarters => _$this._headquarters;
  set headquarters(String? headquarters) => _$this._headquarters = headquarters;

  Date? _cooperationStart;
  Date? get cooperationStart => _$this._cooperationStart;
  set cooperationStart(Date? cooperationStart) =>
      _$this._cooperationStart = cooperationStart;

  CooperationStatus? _cooperationStatus;
  CooperationStatus? get cooperationStatus => _$this._cooperationStatus;
  set cooperationStatus(CooperationStatus? cooperationStatus) =>
      _$this._cooperationStatus = cooperationStatus;

  PartnerBuilder() {
    Partner._defaults(this);
  }

  PartnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _taxNumber = $v.taxNumber;
      _registrationNumber = $v.registrationNumber;
      _headquarters = $v.headquarters;
      _cooperationStart = $v.cooperationStart;
      _cooperationStatus = $v.cooperationStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Partner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Partner;
  }

  @override
  void update(void Function(PartnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Partner build() {
    final _$result = _$v ??
        new _$Partner._(
            id: id,
            name:
                BuiltValueNullFieldError.checkNotNull(name, 'Partner', 'name'),
            taxNumber: taxNumber,
            registrationNumber: registrationNumber,
            headquarters: headquarters,
            cooperationStart: cooperationStart,
            cooperationStatus: cooperationStatus);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
