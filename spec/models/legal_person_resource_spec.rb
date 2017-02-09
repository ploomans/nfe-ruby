=begin
#Service Invoice API (api.nfe.io)

#No descripton provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for NfeClient::LegalPersonResource
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'LegalPersonResource' do
  before do
    # run before each test
    @instance = NfeClient::LegalPersonResource.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LegalPersonResource' do
    it 'should create an instact of LegalPersonResource' do
      expect(@instance).to be_instance_of(NfeClient::LegalPersonResource)
    end
  end
  describe 'test attribute "id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "trade_name"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "federal_tax_number"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "email"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "address"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "openning_date"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "tax_regime"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["LucroReal", "LucroPresumido", "SimplesNacional", "MicroempreendedorIndividual", "Isento"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.tax_regime = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "legal_nature"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["EmpresaPublica", "SociedadeEconomiaMista", "SociedadeAnonimaAberta", "SociedadeAnonimaFechada", "SociedadeEmpresariaLimitada", "SociedadeEmpresariaEmNomeColetivo", "SociedadeEmpresariaEmComanditaSimples", "SociedadeEmpresariaEmComanditaporAcoes", "SociedadeemContaParticipacao", "Empresario", "Cooperativa", "ConsorcioSociedades", "GrupoSociedades", "EmpresaDomiciliadaExterior", "ClubeFundoInvestimento", "SociedadeSimplesPura", "SociedadeSimplesLimitada", "SociedadeSimplesEmNomeColetivo", "SociedadeSimplesEmComanditaSimples", "EmpresaBinacional", "ConsorcioEmpregadores", "ConsorcioSimples", "EireliNaturezaEmpresaria", "EireliNaturezaSimples", "ServicoNotarial", "FundacaoPrivada", "ServicoSocialAutonomo", "CondominioEdilicio", "ComissaoConciliacaoPrevia", "EntidadeMediacaoArbitragem", "PartidoPolitico", "EntidadeSindical", "EstabelecimentoBrasilFundacaoAssociacaoEstrangeiras", "FundacaoAssociacaoDomiciliadaExterior", "OrganizacaoReligiosa", "ComunidadeIndigena", "FundoPrivado", "AssociacaoPrivada"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.legal_nature = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "economic_activities"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "company_registry_number"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "regional_tax_number"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "municipal_tax_number"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "status"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["None", "Active", "Inactive"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.status = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "created_on"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "modified_on"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

