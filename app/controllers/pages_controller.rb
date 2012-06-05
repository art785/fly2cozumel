class PagesController < ApplicationController
  def inicio
    @title = "Inicio"
  end

  def nosotros
    @title = "Nosotros"
  end
  
  def aeroshow
    @title = "Aeroshow"
  end
  
  def cursos
    @title = "cursos"
  end
  def prensa
    @title = "prensa"
  end
  def instalaciones
    @title = "instalaciones"
  end
  def galeria
    @title = "galeria"
  end
  def livecamera
    @title = "live camera"
  end

end