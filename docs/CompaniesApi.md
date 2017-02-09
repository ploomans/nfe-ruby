# NfeClient::CompaniesApi

All URIs are relative to *http://0dc0eb045c534226bb2d6fd91a776abb.cloudapp.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_company**](CompaniesApi.md#create_company) | **POST** /v1/companies | Criar uma empresa
[**delete_company**](CompaniesApi.md#delete_company) | **DELETE** /v1/companies/{company_id} | Excluir uma empresa
[**get_companies**](CompaniesApi.md#get_companies) | **GET** /v1/companies | Listar as empresas ativas de uma conta
[**get_company**](CompaniesApi.md#get_company) | **GET** /v1/companies/{company_id_or_tax_number} | Obter os detalhes de uma empresa
[**update_company**](CompaniesApi.md#update_company) | **PUT** /v1/companies/{company_id} | Atualizar uma empresa
[**upload_company_certificate**](CompaniesApi.md#upload_company_certificate) | **POST** /v1/companies/{company_id}/certificate | Upload do certificado digital da empresa usando o codificação multipart/form-data.


# **create_company**
> CompanySingleResource create_company(item)

Criar uma empresa

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

api_instance = NfeClient::CompaniesApi.new

item = NfeClient::CompanyResource.new # CompanyResource | Dados da empresa


begin
  #Criar uma empresa
  result = api_instance.create_company(item)
  p result
rescue NfeClient::ApiError => e
  puts "Exception when calling CompaniesApi->create_company: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | [**CompanyResource**](CompanyResource.md)| Dados da empresa | 

### Return type

[**CompanySingleResource**](CompanySingleResource.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/bson, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/bson, text/xml



# **delete_company**
> Object delete_company(company_id)

Excluir uma empresa

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

api_instance = NfeClient::CompaniesApi.new

company_id = "company_id_example" # String | ID da empresa


begin
  #Excluir uma empresa
  result = api_instance.delete_company(company_id)
  p result
rescue NfeClient::ApiError => e
  puts "Exception when calling CompaniesApi->delete_company: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **String**| ID da empresa | 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/bson, text/xml



# **get_companies**
> CompanyCollectionResource get_companies

Listar as empresas ativas de uma conta

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

api_instance = NfeClient::CompaniesApi.new

begin
  #Listar as empresas ativas de uma conta
  result = api_instance.get_companies
  p result
rescue NfeClient::ApiError => e
  puts "Exception when calling CompaniesApi->get_companies: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CompanyCollectionResource**](CompanyCollectionResource.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/bson, text/xml



# **get_company**
> CompanySingleResource get_company(company_id_or_tax_number)

Obter os detalhes de uma empresa

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

api_instance = NfeClient::CompaniesApi.new

company_id_or_tax_number = "company_id_or_tax_number_example" # String | ID da empresa ou Inscrição Federal (CNPJ)


begin
  #Obter os detalhes de uma empresa
  result = api_instance.get_company(company_id_or_tax_number)
  p result
rescue NfeClient::ApiError => e
  puts "Exception when calling CompaniesApi->get_company: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id_or_tax_number** | **String**| ID da empresa ou Inscrição Federal (CNPJ) | 

### Return type

[**CompanySingleResource**](CompanySingleResource.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/bson, text/xml



# **update_company**
> CompanySingleResource update_company(company_id, item)

Atualizar uma empresa

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

api_instance = NfeClient::CompaniesApi.new

company_id = "company_id_example" # String | ID da empresa

item = NfeClient::CompanyResource.new # CompanyResource | Dados da empresa


begin
  #Atualizar uma empresa
  result = api_instance.update_company(company_id, item)
  p result
rescue NfeClient::ApiError => e
  puts "Exception when calling CompaniesApi->update_company: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **String**| ID da empresa | 
 **item** | [**CompanyResource**](CompanyResource.md)| Dados da empresa | 

### Return type

[**CompanySingleResource**](CompanySingleResource.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/bson, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/bson, text/xml



# **upload_company_certificate**
> String upload_company_certificate(company_id, file, password)

Upload do certificado digital da empresa usando o codificação multipart/form-data.

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

api_instance = NfeClient::CompaniesApi.new

company_id = "company_id_example" # String | ID da empresa

file = File.new("/path/to/file.txt") # File | Arquivo do certificado digital com extensao PFX ou P12

password = "password_example" # String | Senha do arquivo do certificado digital


begin
  #Upload do certificado digital da empresa usando o codificação multipart/form-data.
  result = api_instance.upload_company_certificate(company_id, file, password)
  p result
rescue NfeClient::ApiError => e
  puts "Exception when calling CompaniesApi->upload_company_certificate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **String**| ID da empresa | 
 **file** | **File**| Arquivo do certificado digital com extensao PFX ou P12 | 
 **password** | **String**| Senha do arquivo do certificado digital | 

### Return type

**String**

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/bson, text/xml



