require_relative '../lib/api'

describe "Devices" do

	context "When requesting the notes for device with name 'ct'" do
		it "Returns the notes 'Legacy Legato CT transmitter'" do
			devices = ApiCall.new
			expect(devices.notes('ct').values[0]).to eql("Legacy Legato CT transmitter")
		end
	end

end
