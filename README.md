# nfe_io_client

NfeClient - the Ruby gem for the Service Invoice API (api.nfe.io)

No descripton provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v1
- Package version: 1.0.0
- Build date: 2017-02-09T17:55:00.566-02:00
- Build package: class io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build nfe_io_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./nfe_io_client-1.0.0.gem
```
(for development, run `gem install --dev ./nfe_io_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'nfe_io_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'nfe_io_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'nfe_io_client'

# Setup authorization
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

## Documentation for API Endpoints

All URIs are relative to *http://0dc0eb045c534226bb2d6fd91a776abb.cloudapp.net*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*NfeClient::CompaniesApi* | [**create_company**](docs/CompaniesApi.md#create_company) | **POST** /v1/companies | Criar uma empresa
*NfeClient::CompaniesApi* | [**delete_company**](docs/CompaniesApi.md#delete_company) | **DELETE** /v1/companies/{company_id} | Excluir uma empresa
*NfeClient::CompaniesApi* | [**get_companies**](docs/CompaniesApi.md#get_companies) | **GET** /v1/companies | Listar as empresas ativas de uma conta
*NfeClient::CompaniesApi* | [**get_company**](docs/CompaniesApi.md#get_company) | **GET** /v1/companies/{company_id_or_tax_number} | Obter os detalhes de uma empresa
*NfeClient::CompaniesApi* | [**update_company**](docs/CompaniesApi.md#update_company) | **PUT** /v1/companies/{company_id} | Atualizar uma empresa
*NfeClient::CompaniesApi* | [**upload_company_certificate**](docs/CompaniesApi.md#upload_company_certificate) | **POST** /v1/companies/{company_id}/certificate | Upload do certificado digital da empresa usando o codificação multipart/form-data.
*NfeClient::LegalPeopleApi* | [**get_legal_people**](docs/LegalPeopleApi.md#get_legal_people) | **GET** /v1/companies/{company_id}/legalpeople | Listar as pessoas jurídicas ativas
*NfeClient::LegalPeopleApi* | [**get_legal_person**](docs/LegalPeopleApi.md#get_legal_person) | **GET** /v1/companies/{company_id}/legalpeople/{id} | Obter os detalhes de uma pessoa jurídica
*NfeClient::NaturalPeopleApi* | [**get_natural_people**](docs/NaturalPeopleApi.md#get_natural_people) | **GET** /v1/companies/{company_id}/naturalpeople | Listar as pessoas físicas ativas
*NfeClient::NaturalPeopleApi* | [**get_natural_person**](docs/NaturalPeopleApi.md#get_natural_person) | **GET** /v1/companies/{company_id}/naturalpeople/{id} | Obter os detalhes de uma pessoa física
*NfeClient::ServiceInvoicesApi* | [**cancel_service_invoice**](docs/ServiceInvoicesApi.md#cancel_service_invoice) | **DELETE** /v1/companies/{company_id}/serviceinvoices/{id} | Cancelar uma Nota Fiscal de Serviços (NFSE)
*NfeClient::ServiceInvoicesApi* | [**create_service_invoice**](docs/ServiceInvoicesApi.md#create_service_invoice) | **POST** /v1/companies/{company_id}/serviceinvoices | Emitir uma Nota Fiscal de Serviço (NFSE)
*NfeClient::ServiceInvoicesApi* | [**get_pdf_version_of_service_invoice**](docs/ServiceInvoicesApi.md#get_pdf_version_of_service_invoice) | **GET** /v1/companies/{company_id}/serviceinvoices/{id}/pdf | Download do PDF da Nota Fiscal de Serviço (NFSE)
*NfeClient::ServiceInvoicesApi* | [**get_service_invoice**](docs/ServiceInvoicesApi.md#get_service_invoice) | **GET** /v1/companies/{company_id}/serviceinvoices/{id} | Obter os detalhes de uma Nota Fiscal de Serviço (NFSE)
*NfeClient::ServiceInvoicesApi* | [**get_service_invoices**](docs/ServiceInvoicesApi.md#get_service_invoices) | **GET** /v1/companies/{company_id}/serviceinvoices | Listar as Notas Fiscais de Serviço (NFSE)
*NfeClient::ServiceInvoicesApi* | [**get_xml_version_of_service_invoice**](docs/ServiceInvoicesApi.md#get_xml_version_of_service_invoice) | **GET** /v1/companies/{company_id}/serviceinvoices/{id}/xml | Download do XML da Nota Fiscal de Serviço (NFSE)
*NfeClient::ServiceInvoicesApi* | [**pull_all_service_invoices_from_prefeitura**](docs/ServiceInvoicesApi.md#pull_all_service_invoices_from_prefeitura) | **PUT** /v1/companies/{company_id}/serviceinvoices/pull | Consulta Notas Fiscais de Serviço (NFSE) da Prefeitura
*NfeClient::ServiceInvoicesApi* | [**send_service_invoice_by_email**](docs/ServiceInvoicesApi.md#send_service_invoice_by_email) | **PUT** /v1/companies/{company_id}/serviceinvoices/{id}/sendemail | Enviar email para o Tomador com a Nota Fiscal de Serviço (NFSE)
*NfeClient::WebhooksApi* | [**create_webhook**](docs/WebhooksApi.md#create_webhook) | **POST** /v1/hooks | Criar um webhook da conta
*NfeClient::WebhooksApi* | [**delete_webhook**](docs/WebhooksApi.md#delete_webhook) | **DELETE** /v1/hooks/{hook_id} | Excluir um webhook da conta
*NfeClient::WebhooksApi* | [**get_webhook**](docs/WebhooksApi.md#get_webhook) | **GET** /v1/hooks/{hook_id} | Obter os detalhes de um webhook da conta
*NfeClient::WebhooksApi* | [**get_webhooks**](docs/WebhooksApi.md#get_webhooks) | **GET** /v1/hooks | Listar os webhooks da conta
*NfeClient::WebhooksApi* | [**update_webhook**](docs/WebhooksApi.md#update_webhook) | **PUT** /v1/hooks/{hook_id} | Atualizar um webhook da conta


## Documentation for Models

 - [NfeClient::Address](docs/Address.md)
 - [NfeClient::AddressCity](docs/AddressCity.md)
 - [NfeClient::Borrower](docs/Borrower.md)
 - [NfeClient::CompanyCertificate](docs/CompanyCertificate.md)
 - [NfeClient::CompanyCollectionResource](docs/CompanyCollectionResource.md)
 - [NfeClient::CompanyResource](docs/CompanyResource.md)
 - [NfeClient::CompanySingleResource](docs/CompanySingleResource.md)
 - [NfeClient::DateRange](docs/DateRange.md)
 - [NfeClient::EconomicActivity](docs/EconomicActivity.md)
 - [NfeClient::LegalPerson](docs/LegalPerson.md)
 - [NfeClient::LegalPersonResource](docs/LegalPersonResource.md)
 - [NfeClient::LegalPersonSingleResource](docs/LegalPersonSingleResource.md)
 - [NfeClient::NaturalPersonCollectionResource](docs/NaturalPersonCollectionResource.md)
 - [NfeClient::NaturalPersonResource](docs/NaturalPersonResource.md)
 - [NfeClient::Object](docs/Object.md)
 - [NfeClient::Person](docs/Person.md)
 - [NfeClient::ServiceInvoiceApproximateTaxesResource](docs/ServiceInvoiceApproximateTaxesResource.md)
 - [NfeClient::ServiceInvoiceCollectionResource](docs/ServiceInvoiceCollectionResource.md)
 - [NfeClient::ServiceInvoiceIssueMessage](docs/ServiceInvoiceIssueMessage.md)
 - [NfeClient::ServiceInvoiceResource](docs/ServiceInvoiceResource.md)
 - [NfeClient::WebhookCollectionResource](docs/WebhookCollectionResource.md)
 - [NfeClient::WebhookResource](docs/WebhookResource.md)
 - [NfeClient::WebhookSingleResource](docs/WebhookSingleResource.md)


## Documentation for Authorization


### apiKey

- **Type**: API key
- **API key parameter name**: X-NFEIO-ApiKey
- **Location**: HTTP header
