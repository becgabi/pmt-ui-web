//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:backend_api/src/date_serializer.dart';
import 'package:backend_api/src/model/date.dart';

import 'package:backend_api/src/model/colleague.dart';
import 'package:backend_api/src/model/colleague_status.dart';
import 'package:backend_api/src/model/colleague_type.dart';
import 'package:backend_api/src/model/cooperation_status.dart';
import 'package:backend_api/src/model/default_problem.dart';
import 'package:backend_api/src/model/identifier_response.dart';
import 'package:backend_api/src/model/partner.dart';
import 'package:backend_api/src/model/permission.dart';
import 'package:backend_api/src/model/phase_type.dart';
import 'package:backend_api/src/model/profile.dart';
import 'package:backend_api/src/model/project.dart';
import 'package:backend_api/src/model/project_phase.dart';
import 'package:backend_api/src/model/role.dart';
import 'package:backend_api/src/model/settlement_mode.dart';
import 'package:backend_api/src/model/time_sheet.dart';
import 'package:backend_api/src/model/time_sheet_item.dart';
import 'package:backend_api/src/model/validation_error.dart';
import 'package:backend_api/src/model/validation_problem.dart';

part 'serializers.g.dart';

@SerializersFor([
  Colleague,
  ColleagueStatus,
  ColleagueType,
  CooperationStatus,
  DefaultProblem,
  IdentifierResponse,
  Partner,
  Permission,
  PhaseType,
  Profile,
  Project,
  ProjectPhase,
  Role,
  SettlementMode,
  TimeSheet,
  TimeSheetItem,
  ValidationError,
  ValidationProblem,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Colleague)]),
        () => ListBuilder<Colleague>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Partner)]),
        () => ListBuilder<Partner>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Project)]),
        () => ListBuilder<Project>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ProjectPhase)]),
        () => ListBuilder<ProjectPhase>(),
      )
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
