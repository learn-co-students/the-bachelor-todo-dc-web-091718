def get_first_name_of_season_winner(data, season)
	season = data[season]
	season.each do | info |
		if info.value?("Winner")
			return info["name"].split.first
		end
	end
end

def get_contestant_name(data, occupation)
  	data.each do |seasons, conts|
  		conts.each do |info|
  			if info.value?(occupation)
  				return info["name"]
  			end
  		end
  	end
end

def count_contestants_by_hometown(data, hometown)
	count = 0
  	data.each do |seasons, conts|
  		conts.each do |info|
  			if info.value?(hometown)
  				count += 1
  			end
  		end
  	end
  	count
end

def get_occupation(data, hometown)
	data.each do |seasons, conts|
  		conts.each do |info|
  			if info.value?(hometown)
  				return info["occupation"]
  			end
  		end
  	end
end

def get_average_age_for_season(data, season)
	season = data[season]
	average = 0
	total = 0.0
	season.each do | info |
		total += info["age"].to_i

	end
	average = ((total / season.size) + 0.5).to_i
end