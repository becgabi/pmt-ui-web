//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:backend_api/src/model/date.dart';
import 'package:backend_api/src/model/phase_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_phase.g.dart';

/// ProjectPhase
///
/// Properties:
/// * [id] - ID of object
/// * [phaseType] 
/// * [name] 
/// * [description] 
/// * [phaseStart] 
/// * [phaseEnd] 
/// * [deadline] 
/// * [projectId] - ID of object
abstract class ProjectPhase implements Built<ProjectPhase, ProjectPhaseBuilder> {
    /// ID of object
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'phaseType')
    PhaseType? get phaseType;
    // enum phaseTypeEnum {  IMPLEMENTATION,  IMPROVEMENT,  SUPPORT,  };

    @BuiltValueField(wireName: r'name')
    String get name;

    @BuiltValueField(wireName: r'description')
    String? get description;

    @BuiltValueField(wireName: r'phaseStart')
    Date? get phaseStart;

    @BuiltValueField(wireName: r'phaseEnd')
    Date? get phaseEnd;

    @BuiltValueField(wireName: r'deadline')
    Date? get deadline;

    /// ID of object
    @BuiltValueField(wireName: r'projectId')
    int? get projectId;

    ProjectPhase._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ProjectPhaseBuilder b) => b;

    factory ProjectPhase([void updates(ProjectPhaseBuilder b)]) = _$ProjectPhase;

    @BuiltValueSerializer(custom: true)
    static Serializer<ProjectPhase> get serializer => _$ProjectPhaseSerializer();
}

class _$ProjectPhaseSerializer implements StructuredSerializer<ProjectPhase> {
    @override
    final Iterable<Type> types = const [ProjectPhase, _$ProjectPhase];

    @override
    final String wireName = r'ProjectPhase';

    @override
    Iterable<Object?> serialize(Serializers serializers, ProjectPhase object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.phaseType != null) {
            result
                ..add(r'phaseType')
                ..add(serializers.serialize(object.phaseType,
                    specifiedType: const FullType(PhaseType)));
        }
        result
            ..add(r'name')
            ..add(serializers.serialize(object.name,
                specifiedType: const FullType(String)));
        if (object.description != null) {
            result
                ..add(r'description')
                ..add(serializers.serialize(object.description,
                    specifiedType: const FullType(String)));
        }
        if (object.phaseStart != null) {
            result
                ..add(r'phaseStart')
                ..add(serializers.serialize(object.phaseStart,
                    specifiedType: const FullType(Date)));
        }
        if (object.phaseEnd != null) {
            result
                ..add(r'phaseEnd')
                ..add(serializers.serialize(object.phaseEnd,
                    specifiedType: const FullType(Date)));
        }
        if (object.deadline != null) {
            result
                ..add(r'deadline')
                ..add(serializers.serialize(object.deadline,
                    specifiedType: const FullType(Date)));
        }
        if (object.projectId != null) {
            result
                ..add(r'projectId')
                ..add(serializers.serialize(object.projectId,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    ProjectPhase deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ProjectPhaseBuilder();

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
                case r'phaseType':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PhaseType)) as PhaseType;
                    result.phaseType = valueDes;
                    break;
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'description':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.description = valueDes;
                    break;
                case r'phaseStart':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Date)) as Date;
                    result.phaseStart = valueDes;
                    break;
                case r'phaseEnd':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Date)) as Date;
                    result.phaseEnd = valueDes;
                    break;
                case r'deadline':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Date)) as Date;
                    result.deadline = valueDes;
                    break;
                case r'projectId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.projectId = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

