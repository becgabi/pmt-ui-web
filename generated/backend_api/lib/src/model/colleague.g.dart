// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'colleague.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Colleague extends Colleague {
  @override
  final int? id;
  @override
  final String? uid;
  @override
  final String? ldapId;
  @override
  final String name;
  @override
  final Role role;
  @override
  final ColleagueType type;
  @override
  final ColleagueStatus status;
  @override
  final String? email;
  @override
  final String? address;
  @override
  final String? phone;
  @override
  final String? bankAccountNumber;

  factory _$Colleague([void Function(ColleagueBuilder)? updates]) =>
      (new ColleagueBuilder()..update(updates)).build();

  _$Colleague._(
      {this.id,
      this.uid,
      this.ldapId,
      required this.name,
      required this.role,
      required this.type,
      required this.status,
      this.email,
      this.address,
      this.phone,
      this.bankAccountNumber})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'Colleague', 'name');
    BuiltValueNullFieldError.checkNotNull(role, 'Colleague', 'role');
    BuiltValueNullFieldError.checkNotNull(type, 'Colleague', 'type');
    BuiltValueNullFieldError.checkNotNull(status, 'Colleague', 'status');
  }

  @override
  Colleague rebuild(void Function(ColleagueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ColleagueBuilder toBuilder() => new ColleagueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Colleague &&
        id == other.id &&
        uid == other.uid &&
        ldapId == other.ldapId &&
        name == other.name &&
        role == other.role &&
        type == other.type &&
        status == other.status &&
        email == other.email &&
        address == other.address &&
        phone == other.phone &&
        bankAccountNumber == other.bankAccountNumber;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc($jc(0, id.hashCode), uid.hashCode),
                                        ldapId.hashCode),
                                    name.hashCode),
                                role.hashCode),
                            type.hashCode),
                        status.hashCode),
                    email.hashCode),
                address.hashCode),
            phone.hashCode),
        bankAccountNumber.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Colleague')
          ..add('id', id)
          ..add('uid', uid)
          ..add('ldapId', ldapId)
          ..add('name', name)
          ..add('role', role)
          ..add('type', type)
          ..add('status', status)
          ..add('email', email)
          ..add('address', address)
          ..add('phone', phone)
          ..add('bankAccountNumber', bankAccountNumber))
        .toString();
  }
}

class ColleagueBuilder implements Builder<Colleague, ColleagueBuilder> {
  _$Colleague? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _ldapId;
  String? get ldapId => _$this._ldapId;
  set ldapId(String? ldapId) => _$this._ldapId = ldapId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  Role? _role;
  Role? get role => _$this._role;
  set role(Role? role) => _$this._role = role;

  ColleagueType? _type;
  ColleagueType? get type => _$this._type;
  set type(ColleagueType? type) => _$this._type = type;

  ColleagueStatus? _status;
  ColleagueStatus? get status => _$this._status;
  set status(ColleagueStatus? status) => _$this._status = status;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _bankAccountNumber;
  String? get bankAccountNumber => _$this._bankAccountNumber;
  set bankAccountNumber(String? bankAccountNumber) =>
      _$this._bankAccountNumber = bankAccountNumber;

  ColleagueBuilder() {
    Colleague._defaults(this);
  }

  ColleagueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _uid = $v.uid;
      _ldapId = $v.ldapId;
      _name = $v.name;
      _role = $v.role;
      _type = $v.type;
      _status = $v.status;
      _email = $v.email;
      _address = $v.address;
      _phone = $v.phone;
      _bankAccountNumber = $v.bankAccountNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Colleague other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Colleague;
  }

  @override
  void update(void Function(ColleagueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Colleague build() {
    final _$result = _$v ??
        new _$Colleague._(
            id: id,
            uid: uid,
            ldapId: ldapId,
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'Colleague', 'name'),
            role: BuiltValueNullFieldError.checkNotNull(
                role, 'Colleague', 'role'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, 'Colleague', 'type'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'Colleague', 'status'),
            email: email,
            address: address,
            phone: phone,
            bankAccountNumber: bankAccountNumber);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
