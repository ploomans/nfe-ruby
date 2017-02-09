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

require "uri"

module NfeClient
  class LegalPeopleApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Listar as pessoas jurídicas ativas
    # 
    # @param company_id ID da empresa
    # @param [Hash] opts the optional parameters
    # @return [LegalPersonSingleResource]
    def get_legal_people(company_id, opts = {})
      data, _status_code, _headers = get_legal_people_with_http_info(company_id, opts)
      return data
    end

    # Listar as pessoas jurídicas ativas
    # 
    # @param company_id ID da empresa
    # @param [Hash] opts the optional parameters
    # @return [Array<(LegalPersonSingleResource, Fixnum, Hash)>] LegalPersonSingleResource data, response status code and response headers
    def get_legal_people_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LegalPeopleApi.get_legal_people ..."
      end
      # verify the required parameter 'company_id' is set
      fail ArgumentError, "Missing the required parameter 'company_id' when calling LegalPeopleApi.get_legal_people" if company_id.nil?
      # resource path
      local_var_path = "/v1/companies/{company_id}/legalpeople".sub('{format}','json').sub('{' + 'company_id' + '}', company_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'text/json', 'application/bson', 'text/xml']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LegalPersonSingleResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegalPeopleApi#get_legal_people\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Obter os detalhes de uma pessoa jurídica
    # 
    # @param company_id ID da empresa
    # @param id ID da pessoa juridica
    # @param [Hash] opts the optional parameters
    # @return [LegalPersonSingleResource]
    def get_legal_person(company_id, id, opts = {})
      data, _status_code, _headers = get_legal_person_with_http_info(company_id, id, opts)
      return data
    end

    # Obter os detalhes de uma pessoa jurídica
    # 
    # @param company_id ID da empresa
    # @param id ID da pessoa juridica
    # @param [Hash] opts the optional parameters
    # @return [Array<(LegalPersonSingleResource, Fixnum, Hash)>] LegalPersonSingleResource data, response status code and response headers
    def get_legal_person_with_http_info(company_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LegalPeopleApi.get_legal_person ..."
      end
      # verify the required parameter 'company_id' is set
      fail ArgumentError, "Missing the required parameter 'company_id' when calling LegalPeopleApi.get_legal_person" if company_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling LegalPeopleApi.get_legal_person" if id.nil?
      # resource path
      local_var_path = "/v1/companies/{company_id}/legalpeople/{id}".sub('{format}','json').sub('{' + 'company_id' + '}', company_id.to_s).sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'text/json', 'application/bson', 'text/xml']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LegalPersonSingleResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LegalPeopleApi#get_legal_person\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
