class RailsAdmin::EventsController < RailsAdmin::MainController
  skip_before_filter :get_model
  skip_before_filter :get_object
  skip_before_filter :check_for_cancel
  
  layout 'admin'
  
  def add_event
  end
end
