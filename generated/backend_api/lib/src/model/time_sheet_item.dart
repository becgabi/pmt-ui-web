//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'time_sheet_item.g.dart';

/// TimeSheetItem
///
/// Properties:
/// * [id] - ID of object
/// * [hours] 
/// * [minutes] 
/// * [description] 
/// * [projectId] - ID of object
/// * [timeSheetId] - ID of object
abstract class TimeSheetItem implements Built<TimeSheetItem, TimeSheetItemBuilder> {
    /// ID of object
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'hours')
    int get hours;

    @BuiltValueField(wireName: r'minutes')
    int get minutes;

    @BuiltValueField(wireName: r'description')
    String? get description;

    /// ID of object
    @BuiltValueField(wireName: r'projectId')
    int get projectId;

    /// ID of object
    @BuiltValueField(wireName: r'timeSheetId')
    int? get timeSheetId;

    TimeSheetItem._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(TimeSheetItemBuilder b) => b;

    factory TimeSheetItem([void updates(TimeSheetItemBuilder b)]) = _$TimeSheetItem;

    @BuiltValueSerializer(custom: true)
    static Serializer<TimeSheetItem> get serializer => _$TimeSheetItemSerializer();
}

class _$TimeSheetItemSerializer implements StructuredSerializer<TimeSheetItem> {
    @override
    final Iterable<Type> types = const [TimeSheetItem, _$TimeSheetItem];

    @override
    final String wireName = r'TimeSheetItem';

    @override
    Iterable<Object?> serialize(Serializers serializers, TimeSheetItem object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        result
            ..add(r'hours')
            ..add(serializers.serialize(object.hours,
                specifiedType: const FullType(int)));
        result
            ..add(r'minutes')
            ..add(serializers.serialize(object.minutes,
                specifiedType: const FullType(int)));
        if (object.description != null) {
            result
                ..add(r'description')
                ..add(serializers.serialize(object.description,
                    specifiedType: const FullType(String)));
        }
        result
            ..add(r'projectId')
            ..add(serializers.serialize(object.projectId,
                specifiedType: const FullType(int)));
        if (object.timeSheetId != null) {
            result
                ..add(r'timeSheetId')
                ..add(serializers.serialize(object.timeSheetId,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    TimeSheetItem deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = TimeSheetItemBuilder();

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
                case r'hours':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.hours = valueDes;
                    break;
                case r'minutes':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.minutes = valueDes;
                    break;
                case r'description':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.description = valueDes;
                    break;
                case r'projectId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.projectId = valueDes;
                    break;
                case r'timeSheetId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.timeSheetId = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

