require 'pry'

def get_first_name_of_season_winner(data, season)
  winner = nil
  
  contestants = data[season]
  contestants.each do |contestant|
    if contestant["status"] == "Winner"
      winner = contestant["name"]
    end
  end
  
  winner.split[0]  
end

def get_contestant_name(data, occupation)
  matching_contestant = all_contestants(data).detect {|x| x["occupation"] == occupation }
  matching_contestant["name"]
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  
  all_contestants(data).each do |contestant|
    if contestant["hometown"] == hometown
      count += 1
    end
  end
  
  count
end

def get_occupation(data, hometown)
  occupation = nil
  
  all_contestants(data).each do |contestant|
    if contestant["hometown"] == hometown
      occupation ? nil : occupation = contestant["occupation"]
    end
  end
  
  return occupation
      
end

def get_average_age_for_season(data, season)
  contestants = data[season]
  total_age = 0.0
  
  contestants.each do |contestant|
    total_age += contestant["age"].to_f
  end
  
  (total_age / contestants.count).round
end

private

def all_contestants(seasons)
  contestants = []
  
  seasons.each do |season, season_contestants|
    season_contestants.each do |c|
      contestants << c
    end
  end
  
  contestants
end