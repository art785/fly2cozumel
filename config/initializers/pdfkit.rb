PDFKit.configure do |config|
   config.wkhtmltopdf = '/usr/local/rvm/gems/ruby-1.9.3-p194@miGemSet/bin/wkhtmltopdf'

   #config.default_options = {
    # :page_size => 'Legal',
    # :print_media_type => true
   #}
  #config.root_url = "http://localhost" # Use only if your external hostname is unavailable on the server.
end