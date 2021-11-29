class WowzersController < ApplicationController

	def potato
	    render plain: "HI EVERYONE THIS IS #{self}\n"
	end

end
