require "pry"

def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each_with_index do |contestant,index|
  	if contestant["status"] == "Winner"
  		return contestant["name"].split[0]
  	end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, season_data|
  	season_data.each do |contestant|
  		if contestant["occupation"] == occupation
  			return contestant["name"]
  		end
  	end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, season_data|
  	season_data.each do |contestant|
  		if contestant["hometown"] == hometown
  			count += 1
  		end
  	end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, season_data|
  	season_data.each do |contestant|
  		if contestant["hometown"] == hometown
  			return contestant["occupation"]
  		end
  	end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages = 0
  counts = 0
  data[season].each do |contestant|
  	counts += 1
  	ages += contestant["age"].to_i
  end
  return (ages/counts.to_f).round
end
