require 'json'

data_file = File.read("./lib/json_file/exercise.json")
data_hash = JSON.parse(data_file)

data_hash.each do |exercise_object|

    FreeTraining.create!( name: exercise_object["name"],
                          bodyPart: exercise_object["bodyPart"], 
                          equipment: exercise_object["equipment"], 
                          gifUrl: exercise_object["gifUrl"], 
                          id: exercise_object["id"],
                          target: exercise_object["target"])

end