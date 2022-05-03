// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_phase.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectPhase extends ProjectPhase {
  @override
  final int? id;
  @override
  final PhaseType? phaseType;
  @override
  final String name;
  @override
  final String? description;
  @override
  final Date? phaseStart;
  @override
  final Date? phaseEnd;
  @override
  final Date? deadline;

  factory _$ProjectPhase([void Function(ProjectPhaseBuilder)? updates]) =>
      (new ProjectPhaseBuilder()..update(updates)).build();

  _$ProjectPhase._(
      {this.id,
      this.phaseType,
      required this.name,
      this.description,
      this.phaseStart,
      this.phaseEnd,
      this.deadline})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'ProjectPhase', 'name');
  }

  @override
  ProjectPhase rebuild(void Function(ProjectPhaseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectPhaseBuilder toBuilder() => new ProjectPhaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectPhase &&
        id == other.id &&
        phaseType == other.phaseType &&
        name == other.name &&
        description == other.description &&
        phaseStart == other.phaseStart &&
        phaseEnd == other.phaseEnd &&
        deadline == other.deadline;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), phaseType.hashCode),
                        name.hashCode),
                    description.hashCode),
                phaseStart.hashCode),
            phaseEnd.hashCode),
        deadline.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProjectPhase')
          ..add('id', id)
          ..add('phaseType', phaseType)
          ..add('name', name)
          ..add('description', description)
          ..add('phaseStart', phaseStart)
          ..add('phaseEnd', phaseEnd)
          ..add('deadline', deadline))
        .toString();
  }
}

class ProjectPhaseBuilder
    implements Builder<ProjectPhase, ProjectPhaseBuilder> {
  _$ProjectPhase? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  PhaseType? _phaseType;
  PhaseType? get phaseType => _$this._phaseType;
  set phaseType(PhaseType? phaseType) => _$this._phaseType = phaseType;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  Date? _phaseStart;
  Date? get phaseStart => _$this._phaseStart;
  set phaseStart(Date? phaseStart) => _$this._phaseStart = phaseStart;

  Date? _phaseEnd;
  Date? get phaseEnd => _$this._phaseEnd;
  set phaseEnd(Date? phaseEnd) => _$this._phaseEnd = phaseEnd;

  Date? _deadline;
  Date? get deadline => _$this._deadline;
  set deadline(Date? deadline) => _$this._deadline = deadline;

  ProjectPhaseBuilder() {
    ProjectPhase._defaults(this);
  }

  ProjectPhaseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _phaseType = $v.phaseType;
      _name = $v.name;
      _description = $v.description;
      _phaseStart = $v.phaseStart;
      _phaseEnd = $v.phaseEnd;
      _deadline = $v.deadline;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectPhase other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectPhase;
  }

  @override
  void update(void Function(ProjectPhaseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProjectPhase build() {
    final _$result = _$v ??
        new _$ProjectPhase._(
            id: id,
            phaseType: phaseType,
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'ProjectPhase', 'name'),
            description: description,
            phaseStart: phaseStart,
            phaseEnd: phaseEnd,
            deadline: deadline);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
