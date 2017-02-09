# NfeClient::CompanyResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Identificação | [optional] 
**name** | **String** | Nome ou Razão Social | 
**trade_name** | **String** | Nome fantasia | [optional] 
**federal_tax_number** | **Integer** | CNPJ ou CPF | 
**email** | **String** | Email | 
**address** | [**Address**](Address.md) | Endereço | 
**openning_date** | **DateTime** | Data abertura da empresa | 
**tax_regime** | **String** | Tipo do Regime Tributário | 
**special_tax_regime** | **String** | Tipo do regime especial de tributação | [optional] 
**legal_nature** | **String** | Código da Natureza Jurídica | 
**economic_activities** | [**Array&lt;EconomicActivity&gt;**](EconomicActivity.md) | Atividades da Empresa | [optional] 
**company_registry_number** | **Integer** | Número de Inscricação na Junta Comercial | [optional] 
**regional_tax_number** | **Integer** | Número de Inscricação na SEFAZ (IE) | [optional] 
**municipal_tax_number** | **String** | Número de Inscricação na Prefeitura (CCM) | 
**rps_serial_number** | **String** | RPS número serie | [optional] 
**rps_number** | **Integer** | RPS número | [optional] 
**environment** | **String** | Ambiente de processamento | [optional] 
**fiscal_status** | **String** | Status no sistema | [optional] 
**certificate** | [**CompanyCertificate**](CompanyCertificate.md) | Certificado | [optional] 
**created_on** | **DateTime** | Data de criação | [optional] 
**modified_on** | **DateTime** | Data da última modificação | [optional] 


