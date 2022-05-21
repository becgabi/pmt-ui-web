//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'calendar_data.g.dart';

/// CalendarData
///
/// Properties:
/// * [movedWorkdays] 
/// * [nonWorkingDays] 
abstract class CalendarData implements Built<CalendarData, CalendarDataBuilder> {
    @BuiltValueField(wireName: r'movedWorkdays')
    BuiltList<String>? get movedWorkdays;

    @BuiltValueField(wireName: r'nonWorkingDays')
    BuiltList<String>? get nonWorkingDays;

    CalendarData._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CalendarDataBuilder b) => b;

    factory CalendarData([void updates(CalendarDataBuilder b)]) = _$CalendarData;

    @BuiltValueSerializer(custom: true)
    static Serializer<CalendarData> get serializer => _$CalendarDataSerializer();
}

class _$CalendarDataSerializer implements StructuredSerializer<CalendarData> {
    @override
    final Iterable<Type> types = const [CalendarData, _$CalendarData];

    @override
    final String wireName = r'CalendarData';

    @override
    Iterable<Object?> serialize(Serializers serializers, CalendarData object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.movedWorkdays != null) {
            result
                ..add(r'movedWorkdays')
                ..add(serializers.serialize(object.movedWorkdays,
                    specifiedType: const FullType(BuiltList, [FullType(String)])));
        }
        if (object.nonWorkingDays != null) {
            result
                ..add(r'nonWorkingDays')
                ..add(serializers.serialize(object.nonWorkingDays,
                    specifiedType: const FullType(BuiltList, [FullType(String)])));
        }
        return result;
    }

    @override
    CalendarData deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CalendarDataBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'movedWorkdays':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>;
                    result.movedWorkdays.replace(valueDes);
                    break;
                case r'nonWorkingDays':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>;
                    result.nonWorkingDays.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

