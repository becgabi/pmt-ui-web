# backend_api.api.ProfileApi

## Load the API package
```dart
import 'package:backend_api/api.dart';
```

All URIs are relative to *http://localhost:9001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findByIdToken**](ProfileApi.md#findbyidtoken) | **GET** /api/profile | Get the profile of the authenticated users


# **findByIdToken**
> Profile findByIdToken()

Get the profile of the authenticated users

### Example
```dart
import 'package:backend_api/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

final api = BackendApi().getProfileApi();

try {
    final response = api.findByIdToken();
    print(response);
} catch on DioError (e) {
    print('Exception when calling ProfileApi->findByIdToken: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Profile**](Profile.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

