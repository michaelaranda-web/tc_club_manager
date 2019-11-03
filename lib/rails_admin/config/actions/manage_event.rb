require 'rails_admin/config/actions'
require 'rails_admin/config/actions/base'

module RailsAdmin
  module Config
    module Actions
      class ManageEvent < RailsAdmin::Config::Actions::Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :member do
          true
        end
        
        register_instance_option :controller do
          proc do
            redirect_to "/admin/manage_event/#{@object.id}"
          end
        end

        register_instance_option :link_icon do
          'icon-calendar'
        end

        register_instance_option :pjax? do
          false
        end
      end
    end
  end
end