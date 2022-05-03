//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validation_error.g.dart';

/// ValidationError
///
/// Properties:
/// * [code] 
/// * [meta] 
/// * [params] 
abstract class ValidationError implements Built<ValidationError, ValidationErrorBuilder> {
    @BuiltValueField(wireName: r'code')
    String? get code;

    @BuiltValueField(wireName: r'meta')
    String? get meta;

    @BuiltValueField(wireName: r'params')
    BuiltMap<String, String>? get params;

    ValidationError._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ValidationErrorBuilder b) => b;

    factory ValidationError([void updates(ValidationErrorBuilder b)]) = _$ValidationError;

    @BuiltValueSerializer(custom: true)
    static Serializer<ValidationError> get serializer => _$ValidationErrorSerializer();
}

class _$ValidationErrorSerializer implements StructuredSerializer<ValidationError> {
    @override
    final Iterable<Type> types = const [ValidationError, _$ValidationError];

    @override
    final String wireName = r'ValidationError';

    @override
    Iterable<Object?> serialize(Serializers serializers, ValidationError object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.code != null) {
            result
                ..add(r'code')
                ..add(serializers.serialize(object.code,
                    specifiedType: const FullType(String)));
        }
        if (object.meta != null) {
            result
                ..add(r'meta')
                ..add(serializers.serialize(object.meta,
                    specifiedType: const FullType(String)));
        }
        if (object.params != null) {
            result
                ..add(r'params')
                ..add(serializers.serialize(object.params,
                    specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)])));
        }
        return result;
    }

    @override
    ValidationError deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ValidationErrorBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'code':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.code = valueDes;
                    break;
                case r'meta':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.meta = valueDes;
                    break;
                case r'params':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)])) as BuiltMap<String, String>;
                    result.params.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

