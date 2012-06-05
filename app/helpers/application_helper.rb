module ApplicationHelper
# regresa el titulo de cada pagina.
def title
base_title = "Fly2cozumel"
if @title.nil?
base_title
else
"#{base_title} | #{@title}"

end
end
end
