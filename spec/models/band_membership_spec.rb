require 'spec_helper'


describe BandMembership do 
	describe "given a musician and band" do
		before do
			@band = Band.create name: "Metalica"
			@musician = Musician.create name: "Lars Ulrich"
		end
		describe "when a musician joins a band" do
			before do
				@musician.join(@band) 							#.join is a method that we're going to create for the musician class. It will place a musician inside of the BandMembership table, and pair it with a band.
			end
			it "has a musician" do
				requirements = {
					band_id: @band_id,
					musician_id: @musician_id
				}
				BandMembership.where(requirements).first.should == @band.id
			end

		end
		# it "" do

		# end
		# it "is created" do
		# 	@band.musicians.should include @musicians
		# end
	end	
end