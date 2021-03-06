module Softlayer
  module User
    module Permission
      class Action < Softlayer::Entity
        SERVICE = 'SoftLayer_User_Permission_Action'
        attr_accessor :create_date
        attr_accessor :description
        attr_accessor :id
        attr_accessor :key_name
        attr_accessor :modify_date
        attr_accessor :name

        def self.get_all_objects
          request(:get_all_objects, Array[Softlayer::User::Permission::Action])
        end

        def get_object
          request(:get_object, Softlayer::User::Permission::Action)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :description, type: String
          property :id, type: Integer
          property :key_name, type: String
          property :modify_date, type: DateTime
          property :name, type: String
        end
      end
    end
  end
end
