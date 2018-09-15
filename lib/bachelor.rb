
def get_first_name_of_season_winner(data, season)
 data.each do |key, value|
   value.each do |key, value|
     if value == "Winner"
         return value[:name].split(' ').first
       end
     end
   end
 end



#def get_first_name_of_season_winner(data,season)
  
  #data.each do |key, value|
  #value.each do |value|
    #if value[:status] == "Winner"
      #return value[:name]
    #end
  #end
 #end
  
    #new_hash = {} 
  #data.each do |season, contestant_hash|
    #contestant_hash.each do |contestant_hash|
      #if contestant_hash[:status] == "Winner"
       #contestant_hash[:name].split(' ').first << new_hash
        #end
        
      #end
      #new_hash
    #end
      
  #data.each do |data, season|
     #season = season.to_s
      #season.each do |contestant_hash|        
        #if contestant_hash[:status] == "Winner"
          #return contestant_hash[:name].split(' ').first
        #end
      #end
    #end
      
    
     
#end


 
 

def get_contestant_name(data, occupation)
  data.each do |key, value.chomp|
   if value.chomp == value
     return key["name"]
      
    
 
        

end


def count_contestants_by_hometown(data, hometown)
  # code here
 home = []
 i = 0
 while i < data.length 
  data.each do |key, value|
    if value.fetch
      
      
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
