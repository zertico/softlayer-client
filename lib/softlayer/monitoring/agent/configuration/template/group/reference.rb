module Softlayer
  module Monitoring
    class Agent
      module Configuration
        module Template
          class Group
            class Reference < Softlayer::Entity
              SERVICE = 'SoftLayer_Monitoring_Agent_Configuration_Template_Group_Reference'
              attr_accessor :configuration_template_id
              attr_accessor :id
              attr_accessor :template_group_id
              attr_accessor :configuration_template
              attr_accessor :template_group

              # template_object
              def self.create_object(message)
                request(:create_object, Softlayer::Monitoring::Agent::Configuration::Template::Group::Reference, message)
              end

              # template_objects
              def self.create_objects(message)
                request(:create_objects, Boolean, message)
              end

              # template_object
              def edit_object(message)
                request(:edit_object, Boolean, message)
              end

              # template_objects
              def self.edit_objects(message)
                request(:edit_objects, Boolean, message)
              end

              def self.get_all_objects
                request(:get_all_objects, Array[Softlayer::Monitoring::Agent::Configuration::Template::Group::Reference])
              end

              def get_configuration_template
                request(:get_configuration_template, Softlayer::Configuration::Template)
              end

              def get_object
                request(:get_object, Softlayer::Monitoring::Agent::Configuration::Template::Group::Reference)
              end

              def get_template_group
                request(:get_template_group, Softlayer::Monitoring::Agent::Configuration::Template::Group)
              end

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :configuration_template_id, type: Integer
                property :id, type: Integer
                property :template_group_id, type: Integer
              end
            end
          end
        end
      end
    end
  end
end
