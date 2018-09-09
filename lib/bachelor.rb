def get_first_name_of_season_winner(data, season)
  
  data.each do |season_num, season_attrib|
    if season_num == season 
      season_attrib.each do |obj|
        if obj["status"] == "Winner"
          name = obj["name"].split(" ")
          return name[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  
  data.each do |season_num, season_attrib|
    season_attrib.each do |obj|
      if obj["occupation"] == occupation
        return obj["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_counter = 0
  data.each do |season_num, season_attrib|
    season_attrib.each do |obj|
      if obj["hometown"] == hometown
        hometown_counter += 1
      end
    end
  end
  hometown_counter
end

def get_occupation(data, hometown)
  
  data.each do |season_num, season_attrib|
    season_attrib.each do |obj|
      if obj["hometown"] == hometown
        return obj["occupation"]
      end
    end
  end
  
end

def get_average_age_for_season(data, season)
  total_age = 0
  total_contestants = 0
  data.each do |season_num, season_attrib|
    if season_num == season
      season_attrib.each do |obj|
        total_age += obj["age"].to_f
        total_contestants += 1
      end
    end
  end
  avg_age = total_age / total_contestants
  avg_age = avg_age.round
end




