//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'default_problem.g.dart';

/// DefaultProblem
///
/// Properties:
/// * [type] 
/// * [title] 
/// * [status] 
/// * [detail] 
/// * [instance] 
abstract class DefaultProblem implements Built<DefaultProblem, DefaultProblemBuilder> {
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

    DefaultProblem._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(DefaultProblemBuilder b) => b;

    factory DefaultProblem([void updates(DefaultProblemBuilder b)]) = _$DefaultProblem;

    @BuiltValueSerializer(custom: true)
    static Serializer<DefaultProblem> get serializer => _$DefaultProblemSerializer();
}

class _$DefaultProblemSerializer implements StructuredSerializer<DefaultProblem> {
    @override
    final Iterable<Type> types = const [DefaultProblem, _$DefaultProblem];

    @override
    final String wireName = r'DefaultProblem';

    @override
    Iterable<Object?> serialize(Serializers serializers, DefaultProblem object,
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
        return result;
    }

    @override
    DefaultProblem deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = DefaultProblemBuilder();

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
            }
        }
        return result.build();
    }
}

