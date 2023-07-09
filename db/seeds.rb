JSON
  .load_file("./db/exercises.json")
  .map { _1.transform_keys(&:underscore) }
  .tap { Exercise.upsert_all(_1) }
  .then { puts "Loaded exercises: #{_1.size}" }

