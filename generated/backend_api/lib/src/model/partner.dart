//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:backend_api/src/model/date.dart';
import 'package:backend_api/src/model/cooperation_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'partner.g.dart';

/// Partner
///
/// Properties:
/// * [id] - ID of object
/// * [name] 
/// * [taxNumber] 
/// * [registrationNumber] 
/// * [headquarters] 
/// * [cooperationStart] 
/// * [cooperationStatus] 
abstract class Partner implements Built<Partner, PartnerBuilder> {
    /// ID of object
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'name')
    String get name;

    @BuiltValueField(wireName: r'taxNumber')
    String? get taxNumber;

    @BuiltValueField(wireName: r'registrationNumber')
    String? get registrationNumber;

    @BuiltValueField(wireName: r'headquarters')
    String? get headquarters;

    @BuiltValueField(wireName: r'cooperationStart')
    Date? get cooperationStart;

    @BuiltValueField(wireName: r'cooperationStatus')
    CooperationStatus? get cooperationStatus;
    // enum cooperationStatusEnum {  ACTIVE,  INACTIVE,  CLOSED,  };

    Partner._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PartnerBuilder b) => b;

    factory Partner([void updates(PartnerBuilder b)]) = _$Partner;

    @BuiltValueSerializer(custom: true)
    static Serializer<Partner> get serializer => _$PartnerSerializer();
}

class _$PartnerSerializer implements StructuredSerializer<Partner> {
    @override
    final Iterable<Type> types = const [Partner, _$Partner];

    @override
    final String wireName = r'Partner';

    @override
    Iterable<Object?> serialize(Serializers serializers, Partner object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        result
            ..add(r'name')
            ..add(serializers.serialize(object.name,
                specifiedType: const FullType(String)));
        if (object.taxNumber != null) {
            result
                ..add(r'taxNumber')
                ..add(serializers.serialize(object.taxNumber,
                    specifiedType: const FullType(String)));
        }
        if (object.registrationNumber != null) {
            result
                ..add(r'registrationNumber')
                ..add(serializers.serialize(object.registrationNumber,
                    specifiedType: const FullType(String)));
        }
        if (object.headquarters != null) {
            result
                ..add(r'headquarters')
                ..add(serializers.serialize(object.headquarters,
                    specifiedType: const FullType(String)));
        }
        if (object.cooperationStart != null) {
            result
                ..add(r'cooperationStart')
                ..add(serializers.serialize(object.cooperationStart,
                    specifiedType: const FullType(Date)));
        }
        if (object.cooperationStatus != null) {
            result
                ..add(r'cooperationStatus')
                ..add(serializers.serialize(object.cooperationStatus,
                    specifiedType: const FullType(CooperationStatus)));
        }
        return result;
    }

    @override
    Partner deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PartnerBuilder();

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
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'taxNumber':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.taxNumber = valueDes;
                    break;
                case r'registrationNumber':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.registrationNumber = valueDes;
                    break;
                case r'headquarters':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.headquarters = valueDes;
                    break;
                case r'cooperationStart':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Date)) as Date;
                    result.cooperationStart = valueDes;
                    break;
                case r'cooperationStatus':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(CooperationStatus)) as CooperationStatus;
                    result.cooperationStatus = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

