loadsatweets
============

https://www.youtube.com/watch?v=A9OF1TomJlM

This is a simple little project you can do to play with Ruby arrays,
hashes, and numbers.

Working in irb/pry
------------------

Go through these in irb.

```ruby
require 'json'

ten_tweets = File.read 'ten_tweets.json'
parsed_tweets = JSON.parse ten_tweets

tweet_texts = parsed_tweets.map{|tweet| tweet['text']}
tweet_words = tweet_texts.map{|text| text.splig}
words = tweet_words.flatten

word_count = Hash.new(0)
words.each do |w|
  word_count[w] += 1
end
```

Now you should have a hash of word counts.
