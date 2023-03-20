puts " === Database seeding starting === "

require 'json'
data_hash = JSON.load_file("./db/exercises.json")
puts "Creating exercises"

data_hash.each do |exercise_object|
    print "."
    Exercise.create!( 
        name: exercise_object["name"],
        body_part: exercise_object["bodyPart"], 
        equipment: exercise_object["equipment"], 
        gif_url: exercise_object["gifUrl"], 
        id: exercise_object["id"],
        target: exercise_object["target"]
    )
end


puts " === Database seeding ending === "