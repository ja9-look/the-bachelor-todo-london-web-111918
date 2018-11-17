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
    person.each do |key, value|
      if v == occupation
        return person["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
