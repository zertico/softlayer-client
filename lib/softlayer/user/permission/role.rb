module Softlayer
  module User
    module Permission
      class Role < Softlayer::Model
        SERVICE = 'SoftLayer_User_Permission_Role'
        attr_accessor :account_id
        attr_accessor :create_date
        attr_accessor :description
        attr_accessor :id
        attr_accessor :modify_date
        attr_accessor :name
        attr_accessor :new_user_default_flag
        attr_accessor :system_flag
        attr_accessor :action_count
        attr_accessor :group_count
        attr_accessor :user_count
        attr_accessor :account
        attr_accessor :actions
        attr_accessor :groups
        attr_accessor :users

        def add_user(user = nil)
          message = {user: user}
          request(:add_user, nil, message)
        end

        def self.create_object(template_object = nil)
          message = {template_object: template_object}
          request(:create_object, Softlayer::User::Permission::Role, message)
        end

        def delete_object
          request(:delete_object, Boolean)
        end

        def edit_object(template_object = nil)
          message = {template_object: template_object}
          request(:edit_object, Softlayer::User::Permission::Role, message)
        end

        def get_account
          request(:get_account, Softlayer::Account)
        end

        def get_actions
          request(:get_actions, Array[Softlayer::User::Permission::Action])
        end

        def get_groups
          request(:get_groups, Array[Softlayer::User::Permission::Group])
        end

        def get_object
          request(:get_object, Softlayer::User::Permission::Role)
        end

        def get_users
          request(:get_users, Array[Softlayer::User::Customer])
        end

        def link_group(group = nil)
          message = {group: group}
          request(:link_group, nil, message)
        end

        def remove_user(user = nil)
          message = {user: user}
          request(:remove_user, nil, message)
        end

        def unlink_group(group = nil)
          message = {group: group}
          request(:unlink_group, nil, message)
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :account_id, type: Integer
          property :create_date, type: DateTime
          property :description, type: String
          property :id, type: Integer
          property :modify_date, type: DateTime
          property :name, type: String
          property :new_user_default_flag, type: Integer
          property :system_flag, type: Integer
          property :action_count, type: BigDecimal
          property :group_count, type: BigDecimal
          property :user_count, type: BigDecimal
        end
      end
    end
  end
end
