class TicketsController < ApplicationController

  load_and_authorize_resource
  
  def index
    @tickets = Ticket.all
     respond_to do |format|
     
      format.js
    end
  end

  def cupones
    @tickets = current_user.tickets
     respond_to do |format|
      format.html # cupones.html.erb
      format.json { render json: @tickets }
      format.js
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
    respond_to do |format|
      format.js
      format.pdf
    end
  end
  def download_pdf
    html = render_to_string(:action => 'tickets/show.html', :layout => false)
    pdf = PDFKit.new(html)
    send_data(pdf.to_pdf)
  end

  def new
    @ticket = Ticket.new
     respond_to do |format|
      format.js
    end
  end

  def create
    
    if current_user.counter < 5
       @ticket.user = current_user
       current_user.counter +=1
      if @ticket.save && current_user.save
         respond_to do |format| 

           format.js { flash[:notice] = 'cupon creado.'
                      redirect_to boletos_path
           }
      end
      else
        render :new
      end
    end
       respond_to do |format| 

         format.js { flash[:notice] = 'NO puede crear mas de 5 boletos.'
                      redirect_to boletos_path
      }
      end
  end

  def edit
     respond_to do |format|
      format.js
    end
  end

  def update
    if @ticket.update_attributes(params[:ticket])
      redirect_to @ticket, :notice  => "Successfully updated ticket."
    else
      render :edit
    end
  end

  def destroy
    @ticket.destroy
     respond_to do |format| 

         format.js { flash[:notice] = 'Ticket eliminado.'
                      redirect_to administracion_path
      }
    end
  end
end
