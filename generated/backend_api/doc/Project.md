# backend_api.model.Project

## Load the model package
```dart
import 'package:backend_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | ID of object | [optional] 
**partnerId** | **int** | ID of object | [optional] 
**name** | **String** |  | 
**projectStart** | [**Date**](Date.md) |  | [optional] 
**projectEnd** | [**Date**](Date.md) |  | [optional] 
**phase** | [**PhaseType**](PhaseType.md) |  | 
**settlementMode** | [**SettlementMode**](SettlementMode.md) |  | 
**phases** | [**BuiltList&lt;ProjectPhase&gt;**](ProjectPhase.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


