# Write your code here!
def game_hash
  game_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
          "Alan Anderson" => {
            :number => 0,
            :shoe => 16,
            :points => 22,
            :rebounds => 12,
            :assists => 12,
            :steals => 3,
            :blocks => 1,
            :slam_dunks => 1
          },
          "Reggie Evans" => {
            :number => 30,
            :shoe => 14,
            :points => 12,
            :rebounds => 12,
            :assists => 12,
            :steals => 12,
            :blocks => 12,
            :slam_dunks => 7
          },
          "Brook Lopez" => {
            :number => 11,
            :shoe => 17,
            :points => 17,
            :rebounds => 19,
            :assists => 10,
            :steals => 3,
            :blocks => 1,
            :slam_dunks => 15
          },
          "Mason Plumlee" => {
            :number => 1,
            :shoe => 19,
            :points => 26,
            :rebounds => 12,
            :assists => 6,
            :steals => 3,
            :blocks => 8,
            :slam_dunks => 5
          },
          "Jason Terry" => {
            :number => 31,
            :shoe => 15,
            :points => 19,
            :rebounds => 2,
            :assists => 2,
            :steals => 4,
            :blocks => 11,
            :slam_dunks => 1
          }
        }
      },

    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
          "Jeff Adrien" => {
            :number => 4,
            :shoe => 18,
            :points => 10,
            :rebounds => 1,
            :assists => 1,
            :steals => 2,
            :blocks => 7,
            :slam_dunks => 2
          },
          "Bismak Biyombo" => {
            :number => 0,
            :shoe => 16,
            :points => 12,
            :rebounds => 4,
            :assists => 7,
            :steals => 7,
            :blocks => 15,
            :slam_dunks => 10
          },
          "DeSagna Diop" => {
            :number => 2,
            :shoe => 14,
            :points => 24,
            :rebounds => 12,
            :assists => 12,
            :steals => 4,
            :blocks => 5,
            :slam_dunks => 5
          },
          "Ben Gordon" => {
            :number => 8,
            :shoe => 15,
            :points => 33,
            :rebounds => 3,
            :assists => 2,
            :steals => 1,
            :blocks => 1,
            :slam_dunks => 0
          },
          "Brendan Haywood" => {
            :number => 33,
            :shoe => 15,
            :points => 6,
            :rebounds => 12,
            :assists => 12,
            :steals => 22,
            :blocks => 5,
            :slam_dunks => 12
          }
        }
      }
    }
end

def num_points_scored(players_name)
  game_hash.each do |key, value|
		value[:players].each do |key2, value2|
			if key2 == players_name
				return value2[:points]
			end
		end
	end
end

def shoe_size(players_name)
  game_hash.each do |key, value|
		value[:players].each do |key2, value2|
			if key2 == players_name
				return value2[:shoe]
			end
		end
	end
end

def team_colors(team_name)
  game_hash.each do |key, value|
		if value[:team_name] == team_name
			return value[:colors]
		end
	end
end

def team_names
  array = []

	game_hash.each do |key, value|
		array << value[:team_name]
	end

	return array
end

def player_numbers(team_namer)
  array = []

	game_hash.each do |key, value|

# 		value.each do |key2, value2|
# 			if value2 == team_name
# # 				key[:players].each |key3, value3|
# # 					puts key3
# # 				end
# 			end
# 			puts key2
# 		end

		if value[:team_name] == team_namer
			value[:players].each do |key2, value2|
				array << value2[:number]
			end
		end
# 		puts value[:colors]
	end

	return array
end

def player_stats(players_name)
  game_hash.each do |key, value|
    value[:players].each do |key2, value2|
      if key2 == players_name
        return value2
      end
    end
  end
end

def big_shoe_rebounds
  largest_shoe = 0
	largest_rebound = 0

	game_hash.each do |key, value|
		value[:players].each do |key2, value2|
			if largest_shoe < value2[:shoe].to_i
				largest_shoe = value2[:shoe].to_i
				largest_rebound = value2[:rebounds].to_i
			end
		end
	end

	# puts largest_shoe
  return largest_rebound
end
