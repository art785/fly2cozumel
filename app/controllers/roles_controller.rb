class RolesController < ApplicationController

  
  def index
    @roles = Role.all
    respond_to do |format|
      format.js
    end
  end

  def show

    
  end

  def new
    @role = Role.new

  end

  def create
    @role = Role.new(params[:role])
    
      respond_to do |format| 
        if @role.save
      
         format.js { flash[:notice] = 'Rol agregado.'
                      redirect_to new_role_path
        }
        else
          format.js { flash[:notice] = 'Rol no agragado.'
                      redirect_to new_role_path
        }
        end
      end
  end

  def edit
  end

  def update
    if @role.update_attributes(params[:role])
      redirect_to @role, :notice  => "Successfully updated role."
    else
      render :edit
    end
  end

  def destroy
    @role.destroy
     respond_to do |format| 

         format.js { flash[:notice] = 'Rol eliminado.'
                      redirect_to tickets_path
      }
    end
  end
end
