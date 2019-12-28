Rails.application.routes.default_url_options[:host] = 'localhost:3000'

require 'active_storage/service/azure_storage_service'
module ActiveStorage
  class Service::AzureStorageService < Service
    def initialize(storage_account_name:, storage_access_key:, container:, **client_options)
      @client = Azure::Storage::Client.create(storage_account_name: storage_account_name, storage_access_key: storage_access_key, **client_options)
      @signer = Azure::Storage::Core::Auth::SharedAccessSignature.new(storage_account_name, storage_access_key)
      @blobs = client.blob_client
      @container = container
    end
  end
end