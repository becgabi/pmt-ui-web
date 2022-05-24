//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:backend_api/src/model/date.dart';
import 'package:backend_api/src/model/colleague.dart';
import 'package:backend_api/src/model/balance_item_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'balance_item.g.dart';

/// BalanceItem
///
/// Properties:
/// * [id] - ID of object
/// * [recorder] 
/// * [creditor] 
/// * [debitor] 
/// * [title] 
/// * [value] 
/// * [comment] 
/// * [status] 
/// * [timestamp] 
abstract class BalanceItem implements Built<BalanceItem, BalanceItemBuilder> {
    /// ID of object
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'recorder')
    Colleague? get recorder;

    @BuiltValueField(wireName: r'creditor')
    Colleague get creditor;

    @BuiltValueField(wireName: r'debitor')
    Colleague get debitor;

    @BuiltValueField(wireName: r'title')
    String get title;

    @BuiltValueField(wireName: r'value')
    int get value;

    @BuiltValueField(wireName: r'comment')
    String? get comment;

    @BuiltValueField(wireName: r'status')
    BalanceItemStatus? get status;
    // enum statusEnum {  PENDING,  APPROVED,  REJECTED,  };

    @BuiltValueField(wireName: r'timestamp')
    Date? get timestamp;

    BalanceItem._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(BalanceItemBuilder b) => b;

    factory BalanceItem([void updates(BalanceItemBuilder b)]) = _$BalanceItem;

    @BuiltValueSerializer(custom: true)
    static Serializer<BalanceItem> get serializer => _$BalanceItemSerializer();
}

class _$BalanceItemSerializer implements StructuredSerializer<BalanceItem> {
    @override
    final Iterable<Type> types = const [BalanceItem, _$BalanceItem];

    @override
    final String wireName = r'BalanceItem';

    @override
    Iterable<Object?> serialize(Serializers serializers, BalanceItem object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.recorder != null) {
            result
                ..add(r'recorder')
                ..add(serializers.serialize(object.recorder,
                    specifiedType: const FullType(Colleague)));
        }
        result
            ..add(r'creditor')
            ..add(serializers.serialize(object.creditor,
                specifiedType: const FullType(Colleague)));
        result
            ..add(r'debitor')
            ..add(serializers.serialize(object.debitor,
                specifiedType: const FullType(Colleague)));
        result
            ..add(r'title')
            ..add(serializers.serialize(object.title,
                specifiedType: const FullType(String)));
        result
            ..add(r'value')
            ..add(serializers.serialize(object.value,
                specifiedType: const FullType(int)));
        if (object.comment != null) {
            result
                ..add(r'comment')
                ..add(serializers.serialize(object.comment,
                    specifiedType: const FullType(String)));
        }
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
                    specifiedType: const FullType(BalanceItemStatus)));
        }
        if (object.timestamp != null) {
            result
                ..add(r'timestamp')
                ..add(serializers.serialize(object.timestamp,
                    specifiedType: const FullType(Date)));
        }
        return result;
    }

    @override
    BalanceItem deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = BalanceItemBuilder();

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
                case r'recorder':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Colleague)) as Colleague;
                    result.recorder.replace(valueDes);
                    break;
                case r'creditor':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Colleague)) as Colleague;
                    result.creditor.replace(valueDes);
                    break;
                case r'debitor':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Colleague)) as Colleague;
                    result.debitor.replace(valueDes);
                    break;
                case r'title':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.title = valueDes;
                    break;
                case r'value':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.value = valueDes;
                    break;
                case r'comment':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.comment = valueDes;
                    break;
                case r'status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BalanceItemStatus)) as BalanceItemStatus;
                    result.status = valueDes;
                    break;
                case r'timestamp':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Date)) as Date;
                    result.timestamp = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

