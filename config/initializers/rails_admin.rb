RailsAdmin.config do |config|

  config.parent_controller = '::ApplicationController'
  ### Popular gems integration

  ## == Devise ==


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

  config.authenticate_with do
    redirect_to main_app.new_session_path unless current_user
  end

  config.authorize_with do
    unless current_user.is_admin?
      session[:user_id] = nil
      redirect_to main_app.new_session_path
    end
  end

  config.current_user_method(&:current_user)

  config.excluded_models = ['ApiKey']

  config.actions do
    dashboard # mandatory
    index # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model 'User' do
    list do
      field :first_name
      field :last_name
      field :email
      field :is_admin
    end

    show do
      field :first_name
      field :last_name
      field :email
      field :is_admin
    end

    edit do
      field :first_name
      field :last_name
      field :email
      field :is_admin
    end

    create do
      field :first_name
      field :last_name
      field :email
      field :is_admin
      field :password, :password do
        def value
          ''
        end
      end
    end

    update do
      field :first_name
      field :last_name
      field :email
      field :is_admin
      field :password, :password do
        def value
          ''
        end
      end
    end
  end
end