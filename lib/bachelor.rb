require 'pry'

def get_first_name_of_season_winner(data, season)
  winner = ''
  data.each do |season_number, contestant_array|
    if season_number == season
      contestant_array.each do |contestant|
        contestant.each do |stat_keys, stats|
          if contestant["status"] == "Winner"
            winner = contestant["name"]
          end
        end
      end
    end
  end
    winner_name = winner.split(' ')
    winner_name[0]
end

def get_contestant_name(data, occupation)
  occ_name = ''
  data.each do |season_number, contestant_array|
    contestant_array.each do |contestant|
      contestant.each do |stat_keys, stats|
        if contestant["occupation"] == occupation
          occ_name = contestant["name"]
        end 
      end
    end
  end
  occ_name
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season_number, contestant_array|
    contestant_array.each do |contestant|
        if contestant["hometown"] == hometown
          counter += 1
        end
    end
  end
    counter
end

def get_occupation(data, hometown)
  gotcha = ''
  data.each do |season_number, contestant_array|
    contestant_array.find do |contestant|
      if contestant["hometown"] == hometown
        gotcha = contestant["occupation"]
      end
    end
  end
  gotcha
end

def get_average_age_for_season(data, season)
  ages = []
  data.each do |season_number, contestant_array|
    if season_number == season
      contestant_array.each do |contestant|
        ages << contestant["age"].to_f
      end
    end
  end
  sum_of_ages = ages.inject(0) { |sum, i| sum + i }
  average_age = sum_of_ages / ages.length
  average_age.round
end
