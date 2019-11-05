# V1Api

All URIs are relative to *https://$*

Method | HTTP request | Description
------------- | ------------- | -------------
[**MatrixLambdasApiV1CoreGetFeatureDetail**](V1Api.md#MatrixLambdasApiV1CoreGetFeatureDetail) | **GET** /v1/features/{feature_name} | Get a information about a matrix feature type
[**MatrixLambdasApiV1CoreGetFeatures**](V1Api.md#MatrixLambdasApiV1CoreGetFeatures) | **GET** /v1/features | Get a list of available feature types
[**MatrixLambdasApiV1CoreGetFieldDetail**](V1Api.md#MatrixLambdasApiV1CoreGetFieldDetail) | **GET** /v1/fields/{field_name} | Get a description of a metadata field
[**MatrixLambdasApiV1CoreGetFields**](V1Api.md#MatrixLambdasApiV1CoreGetFields) | **GET** /v1/fields | Get a list of available metadata fields
[**MatrixLambdasApiV1CoreGetFilterDetail**](V1Api.md#MatrixLambdasApiV1CoreGetFilterDetail) | **GET** /v1/filters/{filter_name} | Get a description of a filter
[**MatrixLambdasApiV1CoreGetFilters**](V1Api.md#MatrixLambdasApiV1CoreGetFilters) | **GET** /v1/filters | Get a list of permitted filters
[**MatrixLambdasApiV1CoreGetFormatDetail**](V1Api.md#MatrixLambdasApiV1CoreGetFormatDetail) | **GET** /v1/formats/{format_name} | Get a description of a matrix format
[**MatrixLambdasApiV1CoreGetFormats**](V1Api.md#MatrixLambdasApiV1CoreGetFormats) | **GET** /v1/formats | Get a list of available matrix formats
[**MatrixLambdasApiV1CoreGetMatrix**](V1Api.md#MatrixLambdasApiV1CoreGetMatrix) | **GET** /v1/matrix/{request_id} | Get status and result of a matrix request
[**MatrixLambdasApiV1CorePostMatrix**](V1Api.md#MatrixLambdasApiV1CorePostMatrix) | **POST** /v1/matrix | Request an expression matrix


# **MatrixLambdasApiV1CoreGetFeatureDetail**
> V1MatrixFeatureDetail MatrixLambdasApiV1CoreGetFeatureDetail(feature.name)

Get a information about a matrix feature type

### Example
```R
library(hcamatrixapi)

var.feature.name <- 'gene' # character | Feature type to describe

#Get a information about a matrix feature type
api.instance <- V1Api$new()
result <- api.instance$MatrixLambdasApiV1CoreGetFeatureDetail(var.feature.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feature.name** | **character**| Feature type to describe | [default to &#39;gene&#39;]

### Return type

[**V1MatrixFeatureDetail**](v1_MatrixFeatureDetail.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Feature found. |  -  |
| **404** | Feature not found. |  -  |

# **MatrixLambdasApiV1CoreGetFeatures**
> array[character] MatrixLambdasApiV1CoreGetFeatures()

Get a list of available feature types

Get a list of matrix feature types that a POST to /matrix will accept. 

### Example
```R
library(hcamatrixapi)


#Get a list of available feature types
api.instance <- V1Api$new()
result <- api.instance$MatrixLambdasApiV1CoreGetFeatures()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**array[character]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully return feature list. |  -  |

# **MatrixLambdasApiV1CoreGetFieldDetail**
> OneOfv1NumericFieldDetailv1CategoricalFieldDetail MatrixLambdasApiV1CoreGetFieldDetail(field.name)

Get a description of a metadata field

Get detailed information about an available metadata field. 

### Example
```R
library(hcamatrixapi)

var.field.name <- 'field.name_example' # character | Field to describe.

#Get a description of a metadata field
api.instance <- V1Api$new()
result <- api.instance$MatrixLambdasApiV1CoreGetFieldDetail(var.field.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **field.name** | **character**| Field to describe. | 

### Return type

[**OneOfv1NumericFieldDetailv1CategoricalFieldDetail**](oneOf&lt;v1_NumericFieldDetail,v1_CategoricalFieldDetail&gt;.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Field found. |  -  |
| **404** | Field not found. |  -  |

# **MatrixLambdasApiV1CoreGetFields**
> array[character] MatrixLambdasApiV1CoreGetFields()

Get a list of available metadata fields

Get a list of metadata field names that a POST to /matrix will accept. 

### Example
```R
library(hcamatrixapi)


#Get a list of available metadata fields
api.instance <- V1Api$new()
result <- api.instance$MatrixLambdasApiV1CoreGetFields()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**array[character]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully return field list. |  -  |

# **MatrixLambdasApiV1CoreGetFilterDetail**
> OneOfv1NumericFieldDetailv1CategoricalFieldDetail MatrixLambdasApiV1CoreGetFilterDetail(filter.name)

Get a description of a filter

Get detailed information about a filter that can be applied to the HCA expression data. 

### Example
```R
library(hcamatrixapi)

var.filter.name <- 'filter.name_example' # character | Filter to describe.

#Get a description of a filter
api.instance <- V1Api$new()
result <- api.instance$MatrixLambdasApiV1CoreGetFilterDetail(var.filter.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter.name** | **character**| Filter to describe. | 

### Return type

[**OneOfv1NumericFieldDetailv1CategoricalFieldDetail**](oneOf&lt;v1_NumericFieldDetail,v1_CategoricalFieldDetail&gt;.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Filter found. |  -  |
| **404** | Filter not found. |  -  |

# **MatrixLambdasApiV1CoreGetFilters**
> array[character] MatrixLambdasApiV1CoreGetFilters()

Get a list of permitted filters

Get a list of filters that a POST to /matrix will accept. 

### Example
```R
library(hcamatrixapi)


#Get a list of permitted filters
api.instance <- V1Api$new()
result <- api.instance$MatrixLambdasApiV1CoreGetFilters()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**array[character]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully return filter list. |  -  |

# **MatrixLambdasApiV1CoreGetFormatDetail**
> character MatrixLambdasApiV1CoreGetFormatDetail(format.name)

Get a description of a matrix format

### Example
```R
library(hcamatrixapi)

var.format.name <- 'loom' # character | Format to describe

#Get a description of a matrix format
api.instance <- V1Api$new()
result <- api.instance$MatrixLambdasApiV1CoreGetFormatDetail(var.format.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format.name** | **character**| Format to describe | [default to &#39;loom&#39;]

### Return type

**character**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Format found. |  -  |
| **404** | Format not found. |  -  |

# **MatrixLambdasApiV1CoreGetFormats**
> array[character] MatrixLambdasApiV1CoreGetFormats()

Get a list of available matrix formats

Get a list of matrix formats that a POST to /matrix will accept. 

### Example
```R
library(hcamatrixapi)


#Get a list of available matrix formats
api.instance <- V1Api$new()
result <- api.instance$MatrixLambdasApiV1CoreGetFormats()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**array[character]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully return format list. |  -  |

# **MatrixLambdasApiV1CoreGetMatrix**
> V1MatrixGetResponse MatrixLambdasApiV1CoreGetMatrix(request.id)

Get status and result of a matrix request

### Example
```R
library(hcamatrixapi)

var.request.id <- 'request.id_example' # character | ID returned by a previous matrix request.

#Get status and result of a matrix request
api.instance <- V1Api$new()
result <- api.instance$MatrixLambdasApiV1CoreGetMatrix(var.request.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request.id** | [**character**](.md)| ID returned by a previous matrix request. | 

### Return type

[**V1MatrixGetResponse**](v1_MatrixGetResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Matrix request found. |  -  |
| **404** | Matrix request id not found. |  -  |

# **MatrixLambdasApiV1CorePostMatrix**
> V1MatrixPostResponse MatrixLambdasApiV1CorePostMatrix(v1.matrix.request=var.v1.matrix.request)

Request an expression matrix

Request an expression matrix using a set of filters to be ANDed and applied to the HCA expression data. 

### Example
```R
library(hcamatrixapi)

var.v1.matrix.request <- v1_MatrixRequest$new(v1_MatrixFilter$new(v1_LogicalFilterOperator$new(), "field_example", TODO), list("fields_example"), "format_example", "feature_example") # V1MatrixRequest | 

#Request an expression matrix
api.instance <- V1Api$new()
result <- api.instance$MatrixLambdasApiV1CorePostMatrix(v1.matrix.request=var.v1.matrix.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v1.matrix.request** | [**V1MatrixRequest**](V1MatrixRequest.md)|  | [optional] 

### Return type

[**V1MatrixPostResponse**](v1_MatrixPostResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **202** | Matrix request accepted. |  -  |
| **400** | Bad request. |  -  |
| **413** | Filter entity too large. |  -  |

