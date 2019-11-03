require "rails_admin/config/actions/manage_event"

RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new do
      except [Event]
    end
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
    manage_event do
      only [Event]
    end

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
  
  config.model Event do
    show do 
      exclude_fields :attended_events
    end
    
    edit do
      exclude_fields :attended_events
    end
  end
  
  config.model AttendedEvent do
    visible false
  end
  
  config.model Member do
    create do
      exclude_fields :attended_events, :events_attended
    end
    
    show do
      exclude_fields :attended_events
    end
    
    edit do
      exclude_fields :attended_events
    end
  end
end
