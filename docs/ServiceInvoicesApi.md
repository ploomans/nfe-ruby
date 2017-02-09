# NfeClient::ServiceInvoicesApi

All URIs are relative to *http://0dc0eb045c534226bb2d6fd91a776abb.cloudapp.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_service_invoice**](ServiceInvoicesApi.md#cancel_service_invoice) | **DELETE** /v1/companies/{company_id}/serviceinvoices/{id} | Cancelar uma Nota Fiscal de Serviços (NFSE)
[**create_service_invoice**](ServiceInvoicesApi.md#create_service_invoice) | **POST** /v1/companies/{company_id}/serviceinvoices | Emitir uma Nota Fiscal de Serviço (NFSE)
[**get_pdf_version_of_service_invoice**](ServiceInvoicesApi.md#get_pdf_version_of_service_invoice) | **GET** /v1/companies/{company_id}/serviceinvoices/{id}/pdf | Download do PDF da Nota Fiscal de Serviço (NFSE)
[**get_service_invoice**](ServiceInvoicesApi.md#get_service_invoice) | **GET** /v1/companies/{company_id}/serviceinvoices/{id} | Obter os detalhes de uma Nota Fiscal de Serviço (NFSE)
[**get_service_invoices**](ServiceInvoicesApi.md#get_service_invoices) | **GET** /v1/companies/{company_id}/serviceinvoices | Listar as Notas Fiscais de Serviço (NFSE)
[**get_xml_version_of_service_invoice**](ServiceInvoicesApi.md#get_xml_version_of_service_invoice) | **GET** /v1/companies/{company_id}/serviceinvoices/{id}/xml | Download do XML da Nota Fiscal de Serviço (NFSE)
[**pull_all_service_invoices_from_prefeitura**](ServiceInvoicesApi.md#pull_all_service_invoices_from_prefeitura) | **PUT** /v1/companies/{company_id}/serviceinvoices/pull | Consulta Notas Fiscais de Serviço (NFSE) da Prefeitura
[**send_service_invoice_by_email**](ServiceInvoicesApi.md#send_service_invoice_by_email) | **PUT** /v1/companies/{company_id}/serviceinvoices/{id}/sendemail | Enviar email para o Tomador com a Nota Fiscal de Serviço (NFSE)


# **cancel_service_invoice**
> String cancel_service_invoice(company_id, id)

Cancelar uma Nota Fiscal de Serviços (NFSE)

Você precisará do APIKEY da Empresa

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

api_instance = NfeClient::ServiceInvoicesApi.new

company_id = "company_id_example" # String | ID da empresa

id = "id_example" # String | ID da Nota Fiscal de Serviço (NFSE)


begin
  #Cancelar uma Nota Fiscal de Serviços (NFSE)
  result = api_instance.cancel_service_invoice(company_id, id)
  p result
rescue NfeClient::ApiError => e
  puts "Exception when calling ServiceInvoicesApi->cancel_service_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **String**| ID da empresa | 
 **id** | **String**| ID da Nota Fiscal de Serviço (NFSE) | 

### Return type

**String**

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/bson, text/xml



# **create_service_invoice**
> ServiceInvoiceResource create_service_invoice(company_id, item)

Emitir uma Nota Fiscal de Serviço (NFSE)

Você precisará do APIKEY da Empresa

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

api_instance = NfeClient::ServiceInvoicesApi.new

company_id = "company_id_example" # String | ID da empresa

item = NfeClient::ServiceInvoiceIssueMessage.new # ServiceInvoiceIssueMessage | Dados da nota fiscal de serviço


begin
  #Emitir uma Nota Fiscal de Serviço (NFSE)
  result = api_instance.create_service_invoice(company_id, item)
  p result
rescue NfeClient::ApiError => e
  puts "Exception when calling ServiceInvoicesApi->create_service_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **String**| ID da empresa | 
 **item** | [**ServiceInvoiceIssueMessage**](ServiceInvoiceIssueMessage.md)| Dados da nota fiscal de serviço | 

### Return type

[**ServiceInvoiceResource**](ServiceInvoiceResource.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/bson, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/bson



# **get_pdf_version_of_service_invoice**
> String get_pdf_version_of_service_invoice(company_id, id)

Download do PDF da Nota Fiscal de Serviço (NFSE)

Você precisará do APIKEY da Empresa

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

api_instance = NfeClient::ServiceInvoicesApi.new

company_id = "company_id_example" # String | ID da empresa

id = "id_example" # String | ID da Nota Fiscal de Serviço (NFSE)


begin
  #Download do PDF da Nota Fiscal de Serviço (NFSE)
  result = api_instance.get_pdf_version_of_service_invoice(company_id, id)
  p result
rescue NfeClient::ApiError => e
  puts "Exception when calling ServiceInvoicesApi->get_pdf_version_of_service_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **String**| ID da empresa | 
 **id** | **String**| ID da Nota Fiscal de Serviço (NFSE) | 

### Return type

**String**

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/bson, text/xml



# **get_service_invoice**
> ServiceInvoiceResource get_service_invoice(company_id, id)

Obter os detalhes de uma Nota Fiscal de Serviço (NFSE)

Você precisará do API Key da Empresa

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

api_instance = NfeClient::ServiceInvoicesApi.new

company_id = "company_id_example" # String | ID da empresa

id = "id_example" # String | ID da Nota Fiscal de Serviço (NFSE)


begin
  #Obter os detalhes de uma Nota Fiscal de Serviço (NFSE)
  result = api_instance.get_service_invoice(company_id, id)
  p result
rescue NfeClient::ApiError => e
  puts "Exception when calling ServiceInvoicesApi->get_service_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **String**| ID da empresa | 
 **id** | **String**| ID da Nota Fiscal de Serviço (NFSE) | 

### Return type

[**ServiceInvoiceResource**](ServiceInvoiceResource.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/bson



# **get_service_invoices**
> ServiceInvoiceCollectionResource get_service_invoices(company_id, opts)

Listar as Notas Fiscais de Serviço (NFSE)

Você precisará do APIKEY da Empresa

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

api_instance = NfeClient::ServiceInvoicesApi.new

company_id = "company_id_example" # String | ID da empresa

opts = { 
  page_count: 56, # Integer | Items por página
  page_index: 56 # Integer | Número da página
}

begin
  #Listar as Notas Fiscais de Serviço (NFSE)
  result = api_instance.get_service_invoices(company_id, opts)
  p result
rescue NfeClient::ApiError => e
  puts "Exception when calling ServiceInvoicesApi->get_service_invoices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **String**| ID da empresa | 
 **page_count** | **Integer**| Items por página | [optional] 
 **page_index** | **Integer**| Número da página | [optional] 

### Return type

[**ServiceInvoiceCollectionResource**](ServiceInvoiceCollectionResource.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/bson



# **get_xml_version_of_service_invoice**
> String get_xml_version_of_service_invoice(company_id, id)

Download do XML da Nota Fiscal de Serviço (NFSE)

Você precisará do APIKEY da Empresa

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

api_instance = NfeClient::ServiceInvoicesApi.new

company_id = "company_id_example" # String | ID da empresa

id = "id_example" # String | ID da Nota Fiscal de Serviço (NFSE)


begin
  #Download do XML da Nota Fiscal de Serviço (NFSE)
  result = api_instance.get_xml_version_of_service_invoice(company_id, id)
  p result
rescue NfeClient::ApiError => e
  puts "Exception when calling ServiceInvoicesApi->get_xml_version_of_service_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **String**| ID da empresa | 
 **id** | **String**| ID da Nota Fiscal de Serviço (NFSE) | 

### Return type

**String**

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/bson, text/xml



# **pull_all_service_invoices_from_prefeitura**
> String pull_all_service_invoices_from_prefeitura(company_id, date_range)

Consulta Notas Fiscais de Serviço (NFSE) da Prefeitura

Você precisará do APIKEY da Empresa

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

api_instance = NfeClient::ServiceInvoicesApi.new

company_id = "company_id_example" # String | ID da empresa

date_range = NfeClient::DateRange.new # DateRange | 


begin
  #Consulta Notas Fiscais de Serviço (NFSE) da Prefeitura
  result = api_instance.pull_all_service_invoices_from_prefeitura(company_id, date_range)
  p result
rescue NfeClient::ApiError => e
  puts "Exception when calling ServiceInvoicesApi->pull_all_service_invoices_from_prefeitura: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **String**| ID da empresa | 
 **date_range** | [**DateRange**](DateRange.md)|  | 

### Return type

**String**

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/bson, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/bson, text/xml



# **send_service_invoice_by_email**
> String send_service_invoice_by_email(company_id, id)

Enviar email para o Tomador com a Nota Fiscal de Serviço (NFSE)

Você precisará do APIKEY da Empresa

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

api_instance = NfeClient::ServiceInvoicesApi.new

company_id = "company_id_example" # String | ID da empresa

id = "id_example" # String | ID da Nota Fiscal de Serviço (NFSE)


begin
  #Enviar email para o Tomador com a Nota Fiscal de Serviço (NFSE)
  result = api_instance.send_service_invoice_by_email(company_id, id)
  p result
rescue NfeClient::ApiError => e
  puts "Exception when calling ServiceInvoicesApi->send_service_invoice_by_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **String**| ID da empresa | 
 **id** | **String**| ID da Nota Fiscal de Serviço (NFSE) | 

### Return type

**String**

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/bson, text/xml



