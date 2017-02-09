# NfeClient::ServiceInvoiceIssueMessage

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**borrower** | [**Borrower**](Borrower.md) | Tomador dos serviços | 
**city_service_code** | **String** | Código do serviço no municipio | 
**federal_service_code** | **String** | Código federal do servico (Item da lista de serviço LC 116) | [optional] 
**cnae_code** | **String** | Código CNAE (somente quando necessario na cidade) | [optional] 
**description** | **String** | Descrição dos serviços | 
**services_amount** | **Float** | Valor do serviços | 
**rps_serial_number** | **String** | Número de Serie da RPS | [optional] 
**issued_on** | **DateTime** | Data da emissão | [optional] 
**rps_number** | **Integer** | Número da RPS | [optional] 
**taxation_type** | **String** | Tipo da tributação | [optional] 
**iss_rate** | **Float** | Aliquota do ISS | [optional] 
**iss_tax_amount** | **Float** | Valor do ISS | [optional] 
**deductions_amount** | **Float** | Valor de deduções | [optional] 
**discount_unconditioned_amount** | **Float** | Valor do desconto incondicionado | [optional] 
**discount_conditioned_amount** | **Float** | Valor do desconto condicionado | [optional] 
**ir_amount_withheld** | **Float** | Valor retido do Imposto de Renda (IR) | [optional] 
**pis_amount_withheld** | **Float** | Valor retido do PIS | [optional] 
**cofins_amount_withheld** | **Float** | Valor retido do COFINS | [optional] 
**csll_amount_withheld** | **Float** | Valor retido do CSLL | [optional] 
**inss_amount_withheld** | **Float** | Valor retido do INSS | [optional] 
**iss_amount_withheld** | **Float** | Valor retido do ISS | [optional] 
**others_amount_withheld** | **Float** | Valor de outras retenções | [optional] 
**approximate_tax** | [**ServiceInvoiceApproximateTaxesResource**](ServiceInvoiceApproximateTaxesResource.md) | Tributos aproximados | [optional] 


