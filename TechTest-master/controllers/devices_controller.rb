class DevicesController < Sinatra::Base

	set :root, File.join(File.dirname(__FILE__), '..')

	configure :development do
    register Sinatra::Reloader
  end

	#get '/:name' do 
	#	content_type 'text/xml'
	#	name = params[:name].to_s
  #	Device.get(name)
	#end

	get '/:name' do
    content_type 'text/xml'
    name = params[:name].to_s
    Device.get(name).to_xml
  end

end