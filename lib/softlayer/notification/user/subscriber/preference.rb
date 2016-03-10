module Softlayer
  class Notification
    module User
      class Subscriber
        class Preference < Softlayer::Model
          SERVICE = 'SoftLayer_Notification_User_Subscriber_Preference'
          attr_accessor :id
          attr_accessor :notification_preference_id
          attr_accessor :notification_user_subscriber_id
          attr_accessor :value
          attr_accessor :default_preference
          attr_accessor :notification_user_subscriber

          def self.create_object(template_object = nil)
            message = {template_object: template_object}
            request(:create_object, Boolean, message)
          end

          def self.edit_objects(template_objects = nil)
            message = {template_objects: template_objects}
            request(:edit_objects, Boolean, message)
          end

          def get_default_preference
            request(:get_default_preference, Softlayer::Notification::Preference)
          end

          def get_notification_user_subscriber
            request(:get_notification_user_subscriber, Softlayer::Notification::User::Subscriber)
          end

          def get_object
            request(:get_object, Softlayer::Notification::User::Subscriber::Preference)
          end

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :id, type: Integer
            property :notification_preference_id, type: Integer
            property :notification_user_subscriber_id, type: Integer
            property :value, type: String
          end
        end
      end
    end
  end
end
