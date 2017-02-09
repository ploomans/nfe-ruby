# NfeClient::LegalPersonResource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Identificação | [optional] 
**name** | **String** | Nome ou Razão Social | 
**trade_name** | **String** | Nome fantasia | [optional] 
**federal_tax_number** | **Integer** | CNPJ ou CPF | [optional] 
**email** | **String** | Email | 
**address** | [**Address**](Address.md) | Endereço | 
**openning_date** | **DateTime** | Data abertura da empresa | [optional] 
**tax_regime** | **String** | Tipo do Regime Tributário | [optional] 
**legal_nature** | **String** | Código da Natureza Jurídica | [optional] 
**economic_activities** | [**Array&lt;EconomicActivity&gt;**](EconomicActivity.md) | Atividades da Empresa | [optional] 
**company_registry_number** | **Integer** | Número de Inscricação na Junta Comercial | [optional] 
**regional_tax_number** | **Integer** | Número de Inscricação na SEFAZ (IE) | [optional] 
**municipal_tax_number** | **Integer** | Número de Inscricação na Prefeitura (CCM) | [optional] 
**status** | **String** | Status no sistema | [optional] 
**created_on** | **DateTime** | Data de criação | [optional] 
**modified_on** | **DateTime** | Data da última modificação | [optional] 


