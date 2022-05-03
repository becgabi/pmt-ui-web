//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'identifier_response.g.dart';

/// IdentifierResponse
///
/// Properties:
/// * [id] - ID of object
abstract class IdentifierResponse implements Built<IdentifierResponse, IdentifierResponseBuilder> {
    /// ID of object
    @BuiltValueField(wireName: r'id')
    int? get id;

    IdentifierResponse._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(IdentifierResponseBuilder b) => b;

    factory IdentifierResponse([void updates(IdentifierResponseBuilder b)]) = _$IdentifierResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<IdentifierResponse> get serializer => _$IdentifierResponseSerializer();
}

class _$IdentifierResponseSerializer implements StructuredSerializer<IdentifierResponse> {
    @override
    final Iterable<Type> types = const [IdentifierResponse, _$IdentifierResponse];

    @override
    final String wireName = r'IdentifierResponse';

    @override
    Iterable<Object?> serialize(Serializers serializers, IdentifierResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    IdentifierResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = IdentifierResponseBuilder();

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
            }
        }
        return result.build();
    }
}

