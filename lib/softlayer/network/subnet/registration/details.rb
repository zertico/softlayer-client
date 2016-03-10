module Softlayer
  class Network
    class Subnet
      class Registration
        class Details < Softlayer::Model
          SERVICE = 'SoftLayer_Network_Subnet_Registration_Details'
          attr_accessor :create_date
          attr_accessor :detail_id
          attr_accessor :id
          attr_accessor :modify_date
          attr_accessor :registration_id
          attr_accessor :detail
          attr_accessor :registration

          def self.create_object(template_object = nil)
            message = {template_object: template_object}
            request(:create_object, Softlayer::Network::Subnet::Registration::Details, message)
          end

          def delete_object
            request(:delete_object, Boolean)
          end

          def get_detail
            request(:get_detail, Softlayer::Account::Regional::Registry::Detail)
          end

          def get_object
            request(:get_object, Softlayer::Network::Subnet::Registration::Details)
          end

          def get_registration
            request(:get_registration, Softlayer::Network::Subnet::Registration)
          end

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :create_date, type: DateTime
            property :detail_id, type: Integer
            property :id, type: Integer
            property :modify_date, type: DateTime
            property :registration_id, type: Integer
          end
        end
      end
    end
  end
end
