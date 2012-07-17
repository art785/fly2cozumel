class SessionsController < Devise::SessionsController
  
def new
      super
    end
  def create
     resource = warden.authenticate!(:scope => resource_name, :recall => "#{controller_path}#new")
     if is_navigational_format?
       if resource.sign_in_count == 1
         set_flash_message(:notice, :signed_in_first_time)
       else
         set_flash_message(:notice, :signed_in)
       end
     end
     sign_in(resource_name, resource)
     if resource.role? (:User)
     respond_to do |format| 
         
         format.js { flash[:notice] = 'Correctamente logeado.'
                      redirect_to boletos_path
      }
    end
  else
     respond_to do |format| 
         
         format.js { flash[:notice] = 'Correctamente logeado.'
                      redirect_to root_path
      }
    end
  end
   end
end