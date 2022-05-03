//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:backend_api/src/model/validation_error.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validation_problem.g.dart';

/// ValidationProblem
///
/// Properties:
/// * [type] 
/// * [title] 
/// * [status] 
/// * [detail] 
/// * [instance] 
/// * [errors] 
abstract class ValidationProblem implements Built<ValidationProblem, ValidationProblemBuilder> {
    @BuiltValueField(wireName: r'type')
    String? get type;

    @BuiltValueField(wireName: r'title')
    String? get title;

    @BuiltValueField(wireName: r'status')
    int? get status;

    @BuiltValueField(wireName: r'detail')
    String? get detail;

    @BuiltValueField(wireName: r'instance')
    String? get instance;

    @BuiltValueField(wireName: r'errors')
    BuiltList<ValidationError>? get errors;

    ValidationProblem._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ValidationProblemBuilder b) => b;

    factory ValidationProblem([void updates(ValidationProblemBuilder b)]) = _$ValidationProblem;

    @BuiltValueSerializer(custom: true)
    static Serializer<ValidationProblem> get serializer => _$ValidationProblemSerializer();
}

class _$ValidationProblemSerializer implements StructuredSerializer<ValidationProblem> {
    @override
    final Iterable<Type> types = const [ValidationProblem, _$ValidationProblem];

    @override
    final String wireName = r'ValidationProblem';

    @override
    Iterable<Object?> serialize(Serializers serializers, ValidationProblem object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.type != null) {
            result
                ..add(r'type')
                ..add(serializers.serialize(object.type,
                    specifiedType: const FullType(String)));
        }
        if (object.title != null) {
            result
                ..add(r'title')
                ..add(serializers.serialize(object.title,
                    specifiedType: const FullType(String)));
        }
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
                    specifiedType: const FullType(int)));
        }
        if (object.detail != null) {
            result
                ..add(r'detail')
                ..add(serializers.serialize(object.detail,
                    specifiedType: const FullType(String)));
        }
        if (object.instance != null) {
            result
                ..add(r'instance')
                ..add(serializers.serialize(object.instance,
                    specifiedType: const FullType(String)));
        }
        if (object.errors != null) {
            result
                ..add(r'errors')
                ..add(serializers.serialize(object.errors,
                    specifiedType: const FullType(BuiltList, [FullType(ValidationError)])));
        }
        return result;
    }

    @override
    ValidationProblem deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ValidationProblemBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.type = valueDes;
                    break;
                case r'title':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.title = valueDes;
                    break;
                case r'status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.status = valueDes;
                    break;
                case r'detail':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.detail = valueDes;
                    break;
                case r'instance':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.instance = valueDes;
                    break;
                case r'errors':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ValidationError)])) as BuiltList<ValidationError>;
                    result.errors.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

