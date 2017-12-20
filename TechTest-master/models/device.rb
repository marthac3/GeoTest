class Device

	def self.load_schema
		@xml_file = Nokogiri::XML(open('./data/mini-schema.xml'))
	end

	def self.get(data_name)
	 	self.load_schema.search('device').each do |device|
		  device_array = device.element_children
		  if device_array[0].text == data_name
		  	return device_array[2]
		  end
		end
	end

end