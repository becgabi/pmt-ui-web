# backend_api.api.ProjectPhaseApi

## Load the API package
```dart
import 'package:backend_api/api.dart';
```

All URIs are relative to *http://localhost:9001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ProjectPhaseApi.md#create) | **POST** /api/projects/{id}/phases | Create new project phase
[**delete**](ProjectPhaseApi.md#delete) | **DELETE** /api/phases/{id} | Delete project phase
[**findById**](ProjectPhaseApi.md#findbyid) | **GET** /api/phases/{id} | Get project phase by id
[**findByProject**](ProjectPhaseApi.md#findbyproject) | **GET** /api/projects/{id}/phases | Get project phases of given project
[**update**](ProjectPhaseApi.md#update) | **PUT** /api/phases/{id} | Update project phase


# **create**
> IdentifierResponse create(projectPhase)

Create new project phase

### Example
```dart
import 'package:backend_api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = BackendApi().getProjectPhaseApi();
final ProjectPhase projectPhase = ; // ProjectPhase | Project phase data

try {
    final response = api.create(projectPhase);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ProjectPhaseApi->create: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectPhase** | [**ProjectPhase**](ProjectPhase.md)| Project phase data | 

### Return type

[**IdentifierResponse**](IdentifierResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(id)

Delete project phase

### Example
```dart
import 'package:backend_api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = BackendApi().getProjectPhaseApi();
final int id = 789; // int | Identifier path parameter

try {
    api.delete(id);
} catch on DioError (e) {
    print('Exception when calling ProjectPhaseApi->delete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Identifier path parameter | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findById**
> ProjectPhase findById(id)

Get project phase by id

### Example
```dart
import 'package:backend_api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = BackendApi().getProjectPhaseApi();
final int id = 789; // int | Identifier path parameter

try {
    final response = api.findById(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ProjectPhaseApi->findById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Identifier path parameter | 

### Return type

[**ProjectPhase**](ProjectPhase.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findByProject**
> BuiltList<ProjectPhase> findByProject(id)

Get project phases of given project

### Example
```dart
import 'package:backend_api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = BackendApi().getProjectPhaseApi();
final int id = 789; // int | Identifier path parameter

try {
    final response = api.findByProject(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ProjectPhaseApi->findByProject: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Identifier path parameter | 

### Return type

[**BuiltList&lt;ProjectPhase&gt;**](ProjectPhase.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> update(id, projectPhase)

Update project phase

### Example
```dart
import 'package:backend_api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = BackendApi().getProjectPhaseApi();
final int id = 789; // int | Identifier path parameter
final ProjectPhase projectPhase = ; // ProjectPhase | Project phase data

try {
    api.update(id, projectPhase);
} catch on DioError (e) {
    print('Exception when calling ProjectPhaseApi->update: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Identifier path parameter | 
 **projectPhase** | [**ProjectPhase**](ProjectPhase.md)| Project phase data | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

