//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:backend_api/src/model/role.dart';
import 'package:backend_api/src/model/colleague_type.dart';
import 'package:backend_api/src/model/colleague_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'colleague.g.dart';

/// Colleague
///
/// Properties:
/// * [id] - ID of object
/// * [uid] - Identifier used by firebase
/// * [ldapId] - Identifier used in LDAP
/// * [name] 
/// * [role] 
/// * [type] 
/// * [status] 
/// * [email] 
/// * [address] 
/// * [phone] 
/// * [bankAccountNumber] 
abstract class Colleague implements Built<Colleague, ColleagueBuilder> {
    /// ID of object
    @BuiltValueField(wireName: r'id')
    int? get id;

    /// Identifier used by firebase
    @BuiltValueField(wireName: r'uid')
    String? get uid;

    /// Identifier used in LDAP
    @BuiltValueField(wireName: r'ldapId')
    String? get ldapId;

    @BuiltValueField(wireName: r'name')
    String get name;

    @BuiltValueField(wireName: r'role')
    Role get role;
    // enum roleEnum {  DIRECTOR,  COLLEAGUE,  };

    @BuiltValueField(wireName: r'type')
    ColleagueType get type;
    // enum typeEnum {  EMPLOYEE,  CONTRACTOR,  HYBRID,  };

    @BuiltValueField(wireName: r'status')
    ColleagueStatus get status;
    // enum statusEnum {  ACTIVE,  INACTIVE,  LEFT,  };

    @BuiltValueField(wireName: r'email')
    String? get email;

    @BuiltValueField(wireName: r'address')
    String? get address;

    @BuiltValueField(wireName: r'phone')
    String? get phone;

    @BuiltValueField(wireName: r'bankAccountNumber')
    String? get bankAccountNumber;

    Colleague._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ColleagueBuilder b) => b;

    factory Colleague([void updates(ColleagueBuilder b)]) = _$Colleague;

    @BuiltValueSerializer(custom: true)
    static Serializer<Colleague> get serializer => _$ColleagueSerializer();
}

class _$ColleagueSerializer implements StructuredSerializer<Colleague> {
    @override
    final Iterable<Type> types = const [Colleague, _$Colleague];

    @override
    final String wireName = r'Colleague';

    @override
    Iterable<Object?> serialize(Serializers serializers, Colleague object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.uid != null) {
            result
                ..add(r'uid')
                ..add(serializers.serialize(object.uid,
                    specifiedType: const FullType(String)));
        }
        if (object.ldapId != null) {
            result
                ..add(r'ldapId')
                ..add(serializers.serialize(object.ldapId,
                    specifiedType: const FullType(String)));
        }
        result
            ..add(r'name')
            ..add(serializers.serialize(object.name,
                specifiedType: const FullType(String)));
        result
            ..add(r'role')
            ..add(serializers.serialize(object.role,
                specifiedType: const FullType(Role)));
        result
            ..add(r'type')
            ..add(serializers.serialize(object.type,
                specifiedType: const FullType(ColleagueType)));
        result
            ..add(r'status')
            ..add(serializers.serialize(object.status,
                specifiedType: const FullType(ColleagueStatus)));
        if (object.email != null) {
            result
                ..add(r'email')
                ..add(serializers.serialize(object.email,
                    specifiedType: const FullType(String)));
        }
        if (object.address != null) {
            result
                ..add(r'address')
                ..add(serializers.serialize(object.address,
                    specifiedType: const FullType(String)));
        }
        if (object.phone != null) {
            result
                ..add(r'phone')
                ..add(serializers.serialize(object.phone,
                    specifiedType: const FullType(String)));
        }
        if (object.bankAccountNumber != null) {
            result
                ..add(r'bankAccountNumber')
                ..add(serializers.serialize(object.bankAccountNumber,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    Colleague deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ColleagueBuilder();

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
                case r'uid':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.uid = valueDes;
                    break;
                case r'ldapId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.ldapId = valueDes;
                    break;
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'role':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Role)) as Role;
                    result.role = valueDes;
                    break;
                case r'type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(ColleagueType)) as ColleagueType;
                    result.type = valueDes;
                    break;
                case r'status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(ColleagueStatus)) as ColleagueStatus;
                    result.status = valueDes;
                    break;
                case r'email':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.email = valueDes;
                    break;
                case r'address':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.address = valueDes;
                    break;
                case r'phone':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.phone = valueDes;
                    break;
                case r'bankAccountNumber':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.bankAccountNumber = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

