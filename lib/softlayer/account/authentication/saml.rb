module Softlayer
  class Account
    module Authentication
      class Saml < Softlayer::Entity
        SERVICE = 'SoftLayer_Account_Authentication_Saml'
        attr_accessor :account_id
        attr_accessor :certificate
        attr_accessor :certificate_fingerprint
        attr_accessor :entity_id
        attr_accessor :id
        attr_accessor :service_provider_certificate
        attr_accessor :service_provider_entity_id
        attr_accessor :service_provider_public_key
        attr_accessor :service_provider_single_logout_encoding
        attr_accessor :service_provider_single_logout_url
        attr_accessor :service_provider_single_sign_on_encoding
        attr_accessor :service_provider_single_sign_on_url
        attr_accessor :single_logout_encoding
        attr_accessor :single_logout_url
        attr_accessor :single_sign_on_encoding
        attr_accessor :single_sign_on_url
        attr_accessor :attribute_count
        attr_accessor :account
        attr_accessor :attributes

        # template_object
        def self.create_object(message)
          request(:create_object, Softlayer::Account::Authentication::Saml, message)
        end

        def delete_object
          request(:delete_object, Boolean)
        end

        # template_object
        def edit_object(message)
          request(:edit_object, Boolean, message)
        end

        def get_account
          request(:get_account, Softlayer::Account)
        end

        def get_attributes
          request(:get_attributes, Array[Softlayer::Account::Authentication::Attribute])
        end

        def get_metadata
          request(:get_metadata, String)
        end

        def get_object
          request(:get_object, Softlayer::Account::Authentication::Saml)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :account_id, type: String
          property :certificate, type: String
          property :certificate_fingerprint, type: String
          property :entity_id, type: String
          property :id, type: Integer
          property :service_provider_certificate, type: String
          property :service_provider_entity_id, type: String
          property :service_provider_public_key, type: String
          property :service_provider_single_logout_encoding, type: String
          property :service_provider_single_logout_url, type: String
          property :service_provider_single_sign_on_encoding, type: String
          property :service_provider_single_sign_on_url, type: String
          property :single_logout_encoding, type: String
          property :single_logout_url, type: String
          property :single_sign_on_encoding, type: String
          property :single_sign_on_url, type: String
          property :attribute_count, type: BigDecimal
        end
      end
    end
  end
end
