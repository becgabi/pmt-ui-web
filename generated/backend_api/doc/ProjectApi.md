# backend_api.api.ProjectApi

## Load the API package
```dart
import 'package:backend_api/api.dart';
```

All URIs are relative to *http://localhost:9001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ProjectApi.md#create) | **POST** /api/partners/{id}/projects | Create new project
[**delete**](ProjectApi.md#delete) | **DELETE** /api/projects/{id} | Delete project
[**findAll**](ProjectApi.md#findall) | **GET** /api/projects | Get all projects
[**findById**](ProjectApi.md#findbyid) | **GET** /api/projects/{id} | Get project by id
[**findByPartner**](ProjectApi.md#findbypartner) | **GET** /api/partners/{id}/projects | Get projects of given partner
[**update**](ProjectApi.md#update) | **PUT** /api/projects/{id} | Update project


# **create**
> IdentifierResponse create(project)

Create new project

### Example
```dart
import 'package:backend_api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = BackendApi().getProjectApi();
final Project project = ; // Project | Project data

try {
    final response = api.create(project);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ProjectApi->create: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | [**Project**](Project.md)| Project data | 

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

Delete project

### Example
```dart
import 'package:backend_api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = BackendApi().getProjectApi();
final int id = 789; // int | Identifier path parameter

try {
    api.delete(id);
} catch on DioError (e) {
    print('Exception when calling ProjectApi->delete: $e\n');
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

# **findAll**
> BuiltList<Project> findAll(from, to)

Get all projects

### Example
```dart
import 'package:backend_api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = BackendApi().getProjectApi();
final DateTime from = 2013-10-20T19:20:30+01:00; // DateTime | Date time from query parameter
final DateTime to = 2013-10-20T19:20:30+01:00; // DateTime | Date time to query parameter

try {
    final response = api.findAll(from, to);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ProjectApi->findAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **DateTime**| Date time from query parameter | [optional] 
 **to** | **DateTime**| Date time to query parameter | [optional] 

### Return type

[**BuiltList&lt;Project&gt;**](Project.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findById**
> Project findById(id)

Get project by id

### Example
```dart
import 'package:backend_api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = BackendApi().getProjectApi();
final int id = 789; // int | Identifier path parameter

try {
    final response = api.findById(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ProjectApi->findById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Identifier path parameter | 

### Return type

[**Project**](Project.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findByPartner**
> BuiltList<Project> findByPartner(id)

Get projects of given partner

### Example
```dart
import 'package:backend_api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = BackendApi().getProjectApi();
final int id = 789; // int | Identifier path parameter

try {
    final response = api.findByPartner(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ProjectApi->findByPartner: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Identifier path parameter | 

### Return type

[**BuiltList&lt;Project&gt;**](Project.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> update(id, project)

Update project

### Example
```dart
import 'package:backend_api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = BackendApi().getProjectApi();
final int id = 789; // int | Identifier path parameter
final Project project = ; // Project | Project data

try {
    api.update(id, project);
} catch on DioError (e) {
    print('Exception when calling ProjectApi->update: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Identifier path parameter | 
 **project** | [**Project**](Project.md)| Project data | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

