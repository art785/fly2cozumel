class RegistrationsController < Devise::RegistrationsController
  before_filter :authenticate_user!, :only => :token

  def new
      super
    end

  
  def create
    @user = User.new(params[:user])
    @user.counter=0

    if @user.save
        
      respond_to do |format| 

         format.js { flash[:notice] = 'El usuario se ha registrado.'
                      redirect_to new_user_registration_path
      }
      end
    else
      render :action => :new
    end
  end

  def update
    super
  end
end 