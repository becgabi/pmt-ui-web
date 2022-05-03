//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:backend_api/src/model/date.dart';
import 'package:backend_api/src/model/phase_type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:backend_api/src/model/project_phase.dart';
import 'package:backend_api/src/model/settlement_mode.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project.g.dart';

/// Project
///
/// Properties:
/// * [id] - ID of object
/// * [partnerId] - ID of object
/// * [name] 
/// * [projectStart] 
/// * [projectEnd] 
/// * [phase] 
/// * [settlementMode] 
/// * [phases] 
abstract class Project implements Built<Project, ProjectBuilder> {
    /// ID of object
    @BuiltValueField(wireName: r'id')
    int? get id;

    /// ID of object
    @BuiltValueField(wireName: r'partnerId')
    int? get partnerId;

    @BuiltValueField(wireName: r'name')
    String get name;

    @BuiltValueField(wireName: r'projectStart')
    Date? get projectStart;

    @BuiltValueField(wireName: r'projectEnd')
    Date? get projectEnd;

    @BuiltValueField(wireName: r'phase')
    PhaseType get phase;
    // enum phaseEnum {  IMPLEMENTATION,  IMPROVEMENT,  SUPPORT,  };

    @BuiltValueField(wireName: r'settlementMode')
    SettlementMode get settlementMode;
    // enum settlementModeEnum {  T_AND_M,  SPRINT_COMMITMENT,  PROJECT_BASED,  };

    @BuiltValueField(wireName: r'phases')
    BuiltList<ProjectPhase> get phases;

    Project._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ProjectBuilder b) => b;

    factory Project([void updates(ProjectBuilder b)]) = _$Project;

    @BuiltValueSerializer(custom: true)
    static Serializer<Project> get serializer => _$ProjectSerializer();
}

class _$ProjectSerializer implements StructuredSerializer<Project> {
    @override
    final Iterable<Type> types = const [Project, _$Project];

    @override
    final String wireName = r'Project';

    @override
    Iterable<Object?> serialize(Serializers serializers, Project object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.partnerId != null) {
            result
                ..add(r'partnerId')
                ..add(serializers.serialize(object.partnerId,
                    specifiedType: const FullType(int)));
        }
        result
            ..add(r'name')
            ..add(serializers.serialize(object.name,
                specifiedType: const FullType(String)));
        if (object.projectStart != null) {
            result
                ..add(r'projectStart')
                ..add(serializers.serialize(object.projectStart,
                    specifiedType: const FullType(Date)));
        }
        if (object.projectEnd != null) {
            result
                ..add(r'projectEnd')
                ..add(serializers.serialize(object.projectEnd,
                    specifiedType: const FullType(Date)));
        }
        result
            ..add(r'phase')
            ..add(serializers.serialize(object.phase,
                specifiedType: const FullType(PhaseType)));
        result
            ..add(r'settlementMode')
            ..add(serializers.serialize(object.settlementMode,
                specifiedType: const FullType(SettlementMode)));
        result
            ..add(r'phases')
            ..add(serializers.serialize(object.phases,
                specifiedType: const FullType(BuiltList, [FullType(ProjectPhase)])));
        return result;
    }

    @override
    Project deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ProjectBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.id = valueDes;
                    break;
                case r'partnerId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.partnerId = valueDes;
                    break;
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'projectStart':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Date)) as Date;
                    result.projectStart = valueDes;
                    break;
                case r'projectEnd':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Date)) as Date;
                    result.projectEnd = valueDes;
                    break;
                case r'phase':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PhaseType)) as PhaseType;
                    result.phase = valueDes;
                    break;
                case r'settlementMode':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(SettlementMode)) as SettlementMode;
                    result.settlementMode = valueDes;
                    break;
                case r'phases':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ProjectPhase)])) as BuiltList<ProjectPhase>;
                    result.phases.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

