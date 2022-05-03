# backend_api.api.ColleagueApi

## Load the API package
```dart
import 'package:backend_api/api.dart';
```

All URIs are relative to *http://localhost:9001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ColleagueApi.md#create) | **POST** /api/colleagues | Create an colleague
[**delete**](ColleagueApi.md#delete) | **DELETE** /api/colleagues/{id} | Delete an colleague
[**findColleague**](ColleagueApi.md#findcolleague) | **GET** /api/colleagues | Get colleagues filtered by an optional name parameter (if parameter is given it act as a like filter)
[**getByAuthToken**](ColleagueApi.md#getbyauthtoken) | **GET** /api/colleagues/self | Get the colleague identified by JWT auth token
[**getOne**](ColleagueApi.md#getone) | **GET** /api/colleagues/{id} | Get an colleague
[**update**](ColleagueApi.md#update) | **PUT** /api/colleagues/{id} | Update an colleague


# **create**
> IdentifierResponse create(colleague)

Create an colleague

### Example
```dart
import 'package:backend_api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = BackendApi().getColleagueApi();
final Colleague colleague = ; // Colleague | Colleague

try {
    final response = api.create(colleague);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ColleagueApi->create: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **colleague** | [**Colleague**](Colleague.md)| Colleague | 

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

Delete an colleague

### Example
```dart
import 'package:backend_api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = BackendApi().getColleagueApi();
final int id = 789; // int | Identifier path parameter

try {
    api.delete(id);
} catch on DioError (e) {
    print('Exception when calling ColleagueApi->delete: $e\n');
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

# **findColleague**
> BuiltList<Colleague> findColleague(name)

Get colleagues filtered by an optional name parameter (if parameter is given it act as a like filter)

### Example
```dart
import 'package:backend_api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = BackendApi().getColleagueApi();
final String name = name_example; // String | 

try {
    final response = api.findColleague(name);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ColleagueApi->findColleague: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;Colleague&gt;**](Colleague.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getByAuthToken**
> Colleague getByAuthToken()

Get the colleague identified by JWT auth token

### Example
```dart
import 'package:backend_api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = BackendApi().getColleagueApi();

try {
    final response = api.getByAuthToken();
    print(response);
} catch on DioError (e) {
    print('Exception when calling ColleagueApi->getByAuthToken: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Colleague**](Colleague.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOne**
> Colleague getOne(id)

Get an colleague

### Example
```dart
import 'package:backend_api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = BackendApi().getColleagueApi();
final int id = 789; // int | Identifier path parameter

try {
    final response = api.getOne(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ColleagueApi->getOne: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Identifier path parameter | 

### Return type

[**Colleague**](Colleague.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> update(id, colleague)

Update an colleague

### Example
```dart
import 'package:backend_api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = BackendApi().getColleagueApi();
final int id = 789; // int | Identifier path parameter
final Colleague colleague = ; // Colleague | Colleague

try {
    api.update(id, colleague);
} catch on DioError (e) {
    print('Exception when calling ColleagueApi->update: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Identifier path parameter | 
 **colleague** | [**Colleague**](Colleague.md)| Colleague | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

