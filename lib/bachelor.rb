# {
#   "season 30": [
#     {
#       "name":      "Beth Smalls",
#       "age":       "26",
#       "hometown":  "Great Falls, Virginia",
#       "occupation":"Nanny/Freelance Journalist",
#       "status":    "Winner"
#     },
#     {
#       "name":       "Becca Tilley",
#       "age":        "27",
#       "hometown":   "Shreveport, Louisiana",
#       "occupation": "Chiropractic Assistant",
#       "status":     "Eliminated Week 8"
#     }
#   ],

def get_first_name_of_season_winner(data, season)
  arry = data[season]
  for sth in arry
    if sth["status"] == "Winner"
      return sth["name"].split(" ").first
    end
  end
end



def get_contestant_name(data, occupation)
  data.each do |season_number, season_into|
    season_into.each do |into_array|
      if into_array["occupation"] == occupation
        return into_array["name"]
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season_number, season_info|
    season_info.each do |into_array|
      if into_array["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season_number, season_into|
    season_into.each do |into_array|
      if into_array["hometown"] == hometown
        return into_array["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  data[season].each do |contestant|
    total_age += contestant["age"].to_i
  end
  average = total_age.to_f/data[season].length
  average.round
end
# def get_average_age_for_season(data, season)
#   arry = []
#   data.each do |season_number, season_into|
#     season_into.each do |into_array|
#       arry.push(into_array["age"])
#         return arry.inject{ |sum, el| sum + el }.to_f.ceil / arry.size
#       end
#     end
#   end
