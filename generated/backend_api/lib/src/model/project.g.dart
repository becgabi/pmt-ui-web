// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Project extends Project {
  @override
  final int? id;
  @override
  final int? partnerId;
  @override
  final String name;
  @override
  final Date? projectStart;
  @override
  final Date? projectEnd;
  @override
  final PhaseType phase;
  @override
  final SettlementMode settlementMode;
  @override
  final BuiltList<ProjectPhase> phases;

  factory _$Project([void Function(ProjectBuilder)? updates]) =>
      (new ProjectBuilder()..update(updates)).build();

  _$Project._(
      {this.id,
      this.partnerId,
      required this.name,
      this.projectStart,
      this.projectEnd,
      required this.phase,
      required this.settlementMode,
      required this.phases})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'Project', 'name');
    BuiltValueNullFieldError.checkNotNull(phase, 'Project', 'phase');
    BuiltValueNullFieldError.checkNotNull(
        settlementMode, 'Project', 'settlementMode');
    BuiltValueNullFieldError.checkNotNull(phases, 'Project', 'phases');
  }

  @override
  Project rebuild(void Function(ProjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectBuilder toBuilder() => new ProjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Project &&
        id == other.id &&
        partnerId == other.partnerId &&
        name == other.name &&
        projectStart == other.projectStart &&
        projectEnd == other.projectEnd &&
        phase == other.phase &&
        settlementMode == other.settlementMode &&
        phases == other.phases;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), partnerId.hashCode),
                            name.hashCode),
                        projectStart.hashCode),
                    projectEnd.hashCode),
                phase.hashCode),
            settlementMode.hashCode),
        phases.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Project')
          ..add('id', id)
          ..add('partnerId', partnerId)
          ..add('name', name)
          ..add('projectStart', projectStart)
          ..add('projectEnd', projectEnd)
          ..add('phase', phase)
          ..add('settlementMode', settlementMode)
          ..add('phases', phases))
        .toString();
  }
}

class ProjectBuilder implements Builder<Project, ProjectBuilder> {
  _$Project? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _partnerId;
  int? get partnerId => _$this._partnerId;
  set partnerId(int? partnerId) => _$this._partnerId = partnerId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  Date? _projectStart;
  Date? get projectStart => _$this._projectStart;
  set projectStart(Date? projectStart) => _$this._projectStart = projectStart;

  Date? _projectEnd;
  Date? get projectEnd => _$this._projectEnd;
  set projectEnd(Date? projectEnd) => _$this._projectEnd = projectEnd;

  PhaseType? _phase;
  PhaseType? get phase => _$this._phase;
  set phase(PhaseType? phase) => _$this._phase = phase;

  SettlementMode? _settlementMode;
  SettlementMode? get settlementMode => _$this._settlementMode;
  set settlementMode(SettlementMode? settlementMode) =>
      _$this._settlementMode = settlementMode;

  ListBuilder<ProjectPhase>? _phases;
  ListBuilder<ProjectPhase> get phases =>
      _$this._phases ??= new ListBuilder<ProjectPhase>();
  set phases(ListBuilder<ProjectPhase>? phases) => _$this._phases = phases;

  ProjectBuilder() {
    Project._defaults(this);
  }

  ProjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _partnerId = $v.partnerId;
      _name = $v.name;
      _projectStart = $v.projectStart;
      _projectEnd = $v.projectEnd;
      _phase = $v.phase;
      _settlementMode = $v.settlementMode;
      _phases = $v.phases.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Project other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Project;
  }

  @override
  void update(void Function(ProjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Project build() {
    _$Project _$result;
    try {
      _$result = _$v ??
          new _$Project._(
              id: id,
              partnerId: partnerId,
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'Project', 'name'),
              projectStart: projectStart,
              projectEnd: projectEnd,
              phase: BuiltValueNullFieldError.checkNotNull(
                  phase, 'Project', 'phase'),
              settlementMode: BuiltValueNullFieldError.checkNotNull(
                  settlementMode, 'Project', 'settlementMode'),
              phases: phases.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'phases';
        phases.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Project', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
