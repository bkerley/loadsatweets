require 'yajl'
require 'json'
# cleans up raw_tweets.json

raw = File.read('raw_tweets.json')

tweets = []

import_one = proc do |t|
  clean_tweet = {
    id: t['id'],
    created_at: t['created_at'],
    text: t['text']
  }

  tweets << clean_tweet 
  print '.'
end

p = Yajl::Parser.new
p.on_parse_complete = import_one

p.parse raw


File.open('tweets.json', 'w') do |f|
  f.write tweets.to_json
end

File.open('ten_tweets.json', 'w') do |f|
  f.write tweets[0..10].to_json
end
