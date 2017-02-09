# NfeClient::WebhooksApi

All URIs are relative to *http://0dc0eb045c534226bb2d6fd91a776abb.cloudapp.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_webhook**](WebhooksApi.md#create_webhook) | **POST** /v1/hooks | Criar um webhook da conta
[**delete_webhook**](WebhooksApi.md#delete_webhook) | **DELETE** /v1/hooks/{hook_id} | Excluir um webhook da conta
[**get_webhook**](WebhooksApi.md#get_webhook) | **GET** /v1/hooks/{hook_id} | Obter os detalhes de um webhook da conta
[**get_webhooks**](WebhooksApi.md#get_webhooks) | **GET** /v1/hooks | Listar os webhooks da conta
[**update_webhook**](WebhooksApi.md#update_webhook) | **PUT** /v1/hooks/{hook_id} | Atualizar um webhook da conta


# **create_webhook**
> WebhookSingleResource create_webhook(item)

Criar um webhook da conta

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

api_instance = NfeClient::WebhooksApi.new

item = NfeClient::WebhookResource.new # WebhookResource | Dados do webhook


begin
  #Criar um webhook da conta
  result = api_instance.create_webhook(item)
  p result
rescue NfeClient::ApiError => e
  puts "Exception when calling WebhooksApi->create_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item** | [**WebhookResource**](WebhookResource.md)| Dados do webhook | 

### Return type

[**WebhookSingleResource**](WebhookSingleResource.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/bson, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/bson, text/xml



# **delete_webhook**
> Object delete_webhook(hook_id)

Excluir um webhook da conta

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

api_instance = NfeClient::WebhooksApi.new

hook_id = 789 # Integer | ID do webhook


begin
  #Excluir um webhook da conta
  result = api_instance.delete_webhook(hook_id)
  p result
rescue NfeClient::ApiError => e
  puts "Exception when calling WebhooksApi->delete_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hook_id** | **Integer**| ID do webhook | 

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/bson, text/xml



# **get_webhook**
> WebhookSingleResource get_webhook(hook_id)

Obter os detalhes de um webhook da conta

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

api_instance = NfeClient::WebhooksApi.new

hook_id = 789 # Integer | ID do webhook


begin
  #Obter os detalhes de um webhook da conta
  result = api_instance.get_webhook(hook_id)
  p result
rescue NfeClient::ApiError => e
  puts "Exception when calling WebhooksApi->get_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hook_id** | **Integer**| ID do webhook | 

### Return type

[**WebhookSingleResource**](WebhookSingleResource.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/bson, text/xml



# **get_webhooks**
> WebhookCollectionResource get_webhooks

Listar os webhooks da conta

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

api_instance = NfeClient::WebhooksApi.new

begin
  #Listar os webhooks da conta
  result = api_instance.get_webhooks
  p result
rescue NfeClient::ApiError => e
  puts "Exception when calling WebhooksApi->get_webhooks: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WebhookCollectionResource**](WebhookCollectionResource.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/bson, text/xml



# **update_webhook**
> WebhookSingleResource update_webhook(hook_id, item)

Atualizar um webhook da conta

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

api_instance = NfeClient::WebhooksApi.new

hook_id = 789 # Integer | ID do webhook

item = NfeClient::WebhookResource.new # WebhookResource | Dados do webhook


begin
  #Atualizar um webhook da conta
  result = api_instance.update_webhook(hook_id, item)
  p result
rescue NfeClient::ApiError => e
  puts "Exception when calling WebhooksApi->update_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hook_id** | **Integer**| ID do webhook | 
 **item** | [**WebhookResource**](WebhookResource.md)| Dados do webhook | 

### Return type

[**WebhookSingleResource**](WebhookSingleResource.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/bson, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/bson, text/xml



