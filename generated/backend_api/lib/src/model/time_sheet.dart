//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:backend_api/src/model/date.dart';
import 'package:built_collection/built_collection.dart';
import 'package:backend_api/src/model/time_sheet_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'time_sheet.g.dart';

/// TimeSheet
///
/// Properties:
/// * [id] - ID of object
/// * [workedDate] 
/// * [sumHours] 
/// * [sumMinutes] 
/// * [colleagueId] - ID of object
/// * [timeSheetItems] 
abstract class TimeSheet implements Built<TimeSheet, TimeSheetBuilder> {
    /// ID of object
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'workedDate')
    Date get workedDate;

    @BuiltValueField(wireName: r'sumHours')
    int get sumHours;

    @BuiltValueField(wireName: r'sumMinutes')
    int get sumMinutes;

    /// ID of object
    @BuiltValueField(wireName: r'colleague_id')
    int get colleagueId;

    @BuiltValueField(wireName: r'timeSheetItems')
    BuiltList<TimeSheetItem>? get timeSheetItems;

    TimeSheet._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(TimeSheetBuilder b) => b;

    factory TimeSheet([void updates(TimeSheetBuilder b)]) = _$TimeSheet;

    @BuiltValueSerializer(custom: true)
    static Serializer<TimeSheet> get serializer => _$TimeSheetSerializer();
}

class _$TimeSheetSerializer implements StructuredSerializer<TimeSheet> {
    @override
    final Iterable<Type> types = const [TimeSheet, _$TimeSheet];

    @override
    final String wireName = r'TimeSheet';

    @override
    Iterable<Object?> serialize(Serializers serializers, TimeSheet object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        result
            ..add(r'workedDate')
            ..add(serializers.serialize(object.workedDate,
                specifiedType: const FullType(Date)));
        result
            ..add(r'sumHours')
            ..add(serializers.serialize(object.sumHours,
                specifiedType: const FullType(int)));
        result
            ..add(r'sumMinutes')
            ..add(serializers.serialize(object.sumMinutes,
                specifiedType: const FullType(int)));
        result
            ..add(r'colleague_id')
            ..add(serializers.serialize(object.colleagueId,
                specifiedType: const FullType(int)));
        if (object.timeSheetItems != null) {
            result
                ..add(r'timeSheetItems')
                ..add(serializers.serialize(object.timeSheetItems,
                    specifiedType: const FullType(BuiltList, [FullType(TimeSheetItem)])));
        }
        return result;
    }

    @override
    TimeSheet deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = TimeSheetBuilder();

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
                case r'workedDate':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Date)) as Date;
                    result.workedDate = valueDes;
                    break;
                case r'sumHours':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.sumHours = valueDes;
                    break;
                case r'sumMinutes':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.sumMinutes = valueDes;
                    break;
                case r'colleague_id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.colleagueId = valueDes;
                    break;
                case r'timeSheetItems':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(TimeSheetItem)])) as BuiltList<TimeSheetItem>;
                    result.timeSheetItems.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

