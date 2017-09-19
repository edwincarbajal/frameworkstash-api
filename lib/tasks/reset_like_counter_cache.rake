desc 'Counter cache for project has many tasks'

task reset_like_counter: :environment do
  Tutorial.reset_column_information
  Tutorial.find_each do |t|
    Tutorial.reset_counters t.id, :likes
  end
end
