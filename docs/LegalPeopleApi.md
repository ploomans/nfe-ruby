# NfeClient::LegalPeopleApi

All URIs are relative to *http://0dc0eb045c534226bb2d6fd91a776abb.cloudapp.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_legal_people**](LegalPeopleApi.md#get_legal_people) | **GET** /v1/companies/{company_id}/legalpeople | Listar as pessoas jurídicas ativas
[**get_legal_person**](LegalPeopleApi.md#get_legal_person) | **GET** /v1/companies/{company_id}/legalpeople/{id} | Obter os detalhes de uma pessoa jurídica


# **get_legal_people**
> LegalPersonSingleResource get_legal_people(company_id)

Listar as pessoas jurídicas ativas

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

api_instance = NfeClient::LegalPeopleApi.new

company_id = "company_id_example" # String | ID da empresa


begin
  #Listar as pessoas jurídicas ativas
  result = api_instance.get_legal_people(company_id)
  p result
rescue NfeClient::ApiError => e
  puts "Exception when calling LegalPeopleApi->get_legal_people: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **String**| ID da empresa | 

### Return type

[**LegalPersonSingleResource**](LegalPersonSingleResource.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/bson, text/xml



# **get_legal_person**
> LegalPersonSingleResource get_legal_person(company_id, id)

Obter os detalhes de uma pessoa jurídica

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

api_instance = NfeClient::LegalPeopleApi.new

company_id = "company_id_example" # String | ID da empresa

id = "id_example" # String | ID da pessoa juridica


begin
  #Obter os detalhes de uma pessoa jurídica
  result = api_instance.get_legal_person(company_id, id)
  p result
rescue NfeClient::ApiError => e
  puts "Exception when calling LegalPeopleApi->get_legal_person: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **String**| ID da empresa | 
 **id** | **String**| ID da pessoa juridica | 

### Return type

[**LegalPersonSingleResource**](LegalPersonSingleResource.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/bson, text/xml



