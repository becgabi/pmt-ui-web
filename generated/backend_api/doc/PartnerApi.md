# backend_api.api.PartnerApi

## Load the API package
```dart
import 'package:backend_api/api.dart';
```

All URIs are relative to *http://localhost:9001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](PartnerApi.md#create) | **POST** /api/partners | Create new partner
[**delete**](PartnerApi.md#delete) | **DELETE** /api/partners/{id} | Delete a partner
[**getAll**](PartnerApi.md#getall) | **GET** /api/partners | Get all partners
[**getOne**](PartnerApi.md#getone) | **GET** /api/partners/{id} | Get a single partner
[**update**](PartnerApi.md#update) | **PUT** /api/partners/{id} | Update a partner


# **create**
> IdentifierResponse create(partner)

Create new partner

### Example
```dart
import 'package:backend_api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = BackendApi().getPartnerApi();
final Partner partner = ; // Partner | Partner

try {
    final response = api.create(partner);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PartnerApi->create: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **partner** | [**Partner**](Partner.md)| Partner | 

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

Delete a partner

### Example
```dart
import 'package:backend_api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = BackendApi().getPartnerApi();
final int id = 789; // int | Identifier path parameter

try {
    api.delete(id);
} catch on DioError (e) {
    print('Exception when calling PartnerApi->delete: $e\n');
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

# **getAll**
> BuiltList<Partner> getAll()

Get all partners

### Example
```dart
import 'package:backend_api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = BackendApi().getPartnerApi();

try {
    final response = api.getAll();
    print(response);
} catch on DioError (e) {
    print('Exception when calling PartnerApi->getAll: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;Partner&gt;**](Partner.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOne**
> Partner getOne(id)

Get a single partner

### Example
```dart
import 'package:backend_api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = BackendApi().getPartnerApi();
final int id = 789; // int | Identifier path parameter

try {
    final response = api.getOne(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PartnerApi->getOne: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Identifier path parameter | 

### Return type

[**Partner**](Partner.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> update(id, partner)

Update a partner

### Example
```dart
import 'package:backend_api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = BackendApi().getPartnerApi();
final int id = 789; // int | Identifier path parameter
final Partner partner = ; // Partner | Partner

try {
    api.update(id, partner);
} catch on DioError (e) {
    print('Exception when calling PartnerApi->update: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Identifier path parameter | 
 **partner** | [**Partner**](Partner.md)| Partner | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

