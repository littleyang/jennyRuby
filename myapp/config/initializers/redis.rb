## Location, config/initializers/redis.rb

config_file = File.join('config','redis.yml')

$redis = if File.exists?(config_file)
           conf = YAML.load(File.read(config_file))
           conf[Rails.env.to_s].blank? ? Redis.new : Redis.new(conf[Rails.env.to_s])
         else
           Redis.new
         end

