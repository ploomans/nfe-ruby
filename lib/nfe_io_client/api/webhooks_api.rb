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
  class WebhooksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Criar um webhook da conta
    # 
    # @param item Dados do webhook
    # @param [Hash] opts the optional parameters
    # @return [WebhookSingleResource]
    def create_webhook(item, opts = {})
      data, _status_code, _headers = create_webhook_with_http_info(item, opts)
      return data
    end

    # Criar um webhook da conta
    # 
    # @param item Dados do webhook
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookSingleResource, Fixnum, Hash)>] WebhookSingleResource data, response status code and response headers
    def create_webhook_with_http_info(item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WebhooksApi.create_webhook ..."
      end
      # verify the required parameter 'item' is set
      fail ArgumentError, "Missing the required parameter 'item' when calling WebhooksApi.create_webhook" if item.nil?
      # resource path
      local_var_path = "/v1/hooks".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'text/json', 'application/bson', 'text/xml']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json', 'text/json', 'application/bson', 'text/xml', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(item)
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WebhookSingleResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#create_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Excluir um webhook da conta
    # 
    # @param hook_id ID do webhook
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_webhook(hook_id, opts = {})
      data, _status_code, _headers = delete_webhook_with_http_info(hook_id, opts)
      return data
    end

    # Excluir um webhook da conta
    # 
    # @param hook_id ID do webhook
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def delete_webhook_with_http_info(hook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WebhooksApi.delete_webhook ..."
      end
      # verify the required parameter 'hook_id' is set
      fail ArgumentError, "Missing the required parameter 'hook_id' when calling WebhooksApi.delete_webhook" if hook_id.nil?
      # resource path
      local_var_path = "/v1/hooks/{hook_id}".sub('{format}','json').sub('{' + 'hook_id' + '}', hook_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#delete_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Obter os detalhes de um webhook da conta
    # 
    # @param hook_id ID do webhook
    # @param [Hash] opts the optional parameters
    # @return [WebhookSingleResource]
    def get_webhook(hook_id, opts = {})
      data, _status_code, _headers = get_webhook_with_http_info(hook_id, opts)
      return data
    end

    # Obter os detalhes de um webhook da conta
    # 
    # @param hook_id ID do webhook
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookSingleResource, Fixnum, Hash)>] WebhookSingleResource data, response status code and response headers
    def get_webhook_with_http_info(hook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WebhooksApi.get_webhook ..."
      end
      # verify the required parameter 'hook_id' is set
      fail ArgumentError, "Missing the required parameter 'hook_id' when calling WebhooksApi.get_webhook" if hook_id.nil?
      # resource path
      local_var_path = "/v1/hooks/{hook_id}".sub('{format}','json').sub('{' + 'hook_id' + '}', hook_id.to_s)

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
        :return_type => 'WebhookSingleResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#get_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Listar os webhooks da conta
    # 
    # @param [Hash] opts the optional parameters
    # @return [WebhookCollectionResource]
    def get_webhooks(opts = {})
      data, _status_code, _headers = get_webhooks_with_http_info(opts)
      return data
    end

    # Listar os webhooks da conta
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookCollectionResource, Fixnum, Hash)>] WebhookCollectionResource data, response status code and response headers
    def get_webhooks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WebhooksApi.get_webhooks ..."
      end
      # resource path
      local_var_path = "/v1/hooks".sub('{format}','json')

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
        :return_type => 'WebhookCollectionResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#get_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Atualizar um webhook da conta
    # 
    # @param hook_id ID do webhook
    # @param item Dados do webhook
    # @param [Hash] opts the optional parameters
    # @return [WebhookSingleResource]
    def update_webhook(hook_id, item, opts = {})
      data, _status_code, _headers = update_webhook_with_http_info(hook_id, item, opts)
      return data
    end

    # Atualizar um webhook da conta
    # 
    # @param hook_id ID do webhook
    # @param item Dados do webhook
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookSingleResource, Fixnum, Hash)>] WebhookSingleResource data, response status code and response headers
    def update_webhook_with_http_info(hook_id, item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WebhooksApi.update_webhook ..."
      end
      # verify the required parameter 'hook_id' is set
      fail ArgumentError, "Missing the required parameter 'hook_id' when calling WebhooksApi.update_webhook" if hook_id.nil?
      # verify the required parameter 'item' is set
      fail ArgumentError, "Missing the required parameter 'item' when calling WebhooksApi.update_webhook" if item.nil?
      # resource path
      local_var_path = "/v1/hooks/{hook_id}".sub('{format}','json').sub('{' + 'hook_id' + '}', hook_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'text/json', 'application/bson', 'text/xml']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json', 'text/json', 'application/bson', 'text/xml', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(item)
      auth_names = ['apiKey']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WebhookSingleResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#update_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
