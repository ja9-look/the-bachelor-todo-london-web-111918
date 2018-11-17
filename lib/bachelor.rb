def get_first_name_of_season_winner(data, season)
  data[season].each do |person|
    person.each do |key, value|
      if value == "Winner"
        full_name = person["name"]
        return full_name.split(" ").first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |person|
      person.each do |key, value|
        if value == occupation
          return person["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0 
  data.each do |season,array|
    array.each do |person|
      person.each do |key, value|
        if value == hometown
          counter += 1 
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |person|
      person.each do |key, value|
        if value == hometown
          return person["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age = 0 
  counter = 0 
  data.each do |season, array|
    array.each do |person|
      person.each do |key,value|
        if key == "age"
          age += value.to_f
          counter += 1  
        end
      end
    end
  end
  average_age = (age/counter).round
end
