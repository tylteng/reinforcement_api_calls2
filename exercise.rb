require 'HTTParty'

word = 'initialize'

response = HTTParty.get("https://api.datamuse.com/words?sp=#{word}")

results = JSON.parse(response.body)

if response.code == 200
  puts "You searched for #{word}. Below are your results"
  results.each do |x|
    puts x["word"]
  end
else
  puts "Error.."
end
