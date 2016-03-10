module Softlayer
  module Scale
    class Policy
      class Trigger
        class OneTime < Softlayer::Scale::Policy::Trigger
          SERVICE = 'SoftLayer_Scale_Policy_Trigger_OneTime'
          attr_accessor :date

          def self.create_object(template_object = nil)
            message = {template_object: template_object}
            request(:create_object, Softlayer::Scale::Policy::Trigger::OneTime, message)
          end

          def delete_object
            request(:delete_object, Boolean)
          end

          def edit_object(template_object = nil)
            message = {template_object: template_object}
            request(:edit_object, Boolean, message)
          end

          def get_object
            request(:get_object, Softlayer::Scale::Policy::Trigger::OneTime)
          end

          def get_scale_policy
            request(:get_scale_policy, Softlayer::Scale::Policy)
          end

          def get_type
            request(:get_type, Softlayer::Scale::Policy::Trigger::Type)
          end

          class Representer < Softlayer::Scale::Policy::Trigger::Representer
            include Representable::Hash
            include Representable::Coercion
            property :date, type: DateTime
          end
        end
      end
    end
  end
end
