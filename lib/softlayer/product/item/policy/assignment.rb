module Softlayer
  module Product
    class Item
      module Policy
        class Assignment < Softlayer::Model
          SERVICE = 'SoftLayer_Product_Item_Policy_Assignment'
          attr_accessor :id
          attr_accessor :product_id
          attr_accessor :policy_name
          attr_accessor :product

          def accept_from_ticket(ticket_id = nil)
            message = {ticket_id: ticket_id}
            request(:accept_from_ticket, Boolean, message)
          end

          def get_object
            request(:get_object, Softlayer::Product::Item::Policy::Assignment)
          end

          def get_policy_document_contents
            request(:get_policy_document_contents, Softlayer::Base64Binary)
          end

          def get_policy_name
            request(:get_policy_name, String)
          end

          def get_product
            request(:get_product, Softlayer::Product::Item)
          end

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :id, type: Integer
            property :product_id, type: Integer
            property :policy_name, type: String
          end
        end
      end
    end
  end
end
