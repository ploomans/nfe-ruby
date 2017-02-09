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

# Unit tests for NfeClient::WebhooksApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'WebhooksApi' do
  before do
    # run before each test
    @instance = NfeClient::WebhooksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WebhooksApi' do
    it 'should create an instact of WebhooksApi' do
      expect(@instance).to be_instance_of(NfeClient::WebhooksApi)
    end
  end

  # unit tests for create_webhook
  # Criar um webhook da conta
  # 
  # @param item Dados do webhook
  # @param [Hash] opts the optional parameters
  # @return [WebhookSingleResource]
  describe 'create_webhook test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_webhook
  # Excluir um webhook da conta
  # 
  # @param hook_id ID do webhook
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_webhook test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_webhook
  # Obter os detalhes de um webhook da conta
  # 
  # @param hook_id ID do webhook
  # @param [Hash] opts the optional parameters
  # @return [WebhookSingleResource]
  describe 'get_webhook test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_webhooks
  # Listar os webhooks da conta
  # 
  # @param [Hash] opts the optional parameters
  # @return [WebhookCollectionResource]
  describe 'get_webhooks test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_webhook
  # Atualizar um webhook da conta
  # 
  # @param hook_id ID do webhook
  # @param item Dados do webhook
  # @param [Hash] opts the optional parameters
  # @return [WebhookSingleResource]
  describe 'update_webhook test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
