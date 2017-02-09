# NfeClient::NaturalPeopleApi

All URIs are relative to *http://0dc0eb045c534226bb2d6fd91a776abb.cloudapp.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_natural_people**](NaturalPeopleApi.md#get_natural_people) | **GET** /v1/companies/{company_id}/naturalpeople | Listar as pessoas físicas ativas
[**get_natural_person**](NaturalPeopleApi.md#get_natural_person) | **GET** /v1/companies/{company_id}/naturalpeople/{id} | Obter os detalhes de uma pessoa física


# **get_natural_people**
> NaturalPersonCollectionResource get_natural_people(company_id)

Listar as pessoas físicas ativas

### Example
```ruby
# load the gem
require 'nfe_io_client'
# setup authorization
NfeClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['X-NFEIO-ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-NFEIO-ApiKey'] = 'Bearer'
end

api_instance = NfeClient::NaturalPeopleApi.new

company_id = "company_id_example" # String | ID da empresa


begin
  #Listar as pessoas físicas ativas
  result = api_instance.get_natural_people(company_id)
  p result
rescue NfeClient::ApiError => e
  puts "Exception when calling NaturalPeopleApi->get_natural_people: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **String**| ID da empresa | 

### Return type

[**NaturalPersonCollectionResource**](NaturalPersonCollectionResource.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/bson, text/xml



# **get_natural_person**
> NaturalPersonResource get_natural_person(company_id, id)

Obter os detalhes de uma pessoa física

### Example
```ruby
# load the gem
require 'nfe_io_client'
# setup authorization
NfeClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['X-NFEIO-ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-NFEIO-ApiKey'] = 'Bearer'
end

api_instance = NfeClient::NaturalPeopleApi.new

company_id = "company_id_example" # String | ID da empresa

id = "id_example" # String | ID da pessoa física


begin
  #Obter os detalhes de uma pessoa física
  result = api_instance.get_natural_person(company_id, id)
  p result
rescue NfeClient::ApiError => e
  puts "Exception when calling NaturalPeopleApi->get_natural_person: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **String**| ID da empresa | 
 **id** | **String**| ID da pessoa física | 

### Return type

[**NaturalPersonResource**](NaturalPersonResource.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/bson, text/xml



