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
tweet_words = tweet_texts.map{|text| text.split}
words = tweet_words.flatten

word_count = Hash.new(0)
words.each do |w|
  word_count[w] += 1
end
```

Now you should have a hash of word counts.

Next Steps
----------

1. "Ruby" and "ruby" are the same word, normalize them.

2. "ruby" and "ruby." are the same word, normalize them.

3. What should we count "conmigo.♥" as?

4. What words are used the most?

5. Any guessees on what I searched for?

Files
-----

* Gemfile - loads gems

* Gemfile.lock - loads gems

* README.md - this file

* clean.rb - script to clean up raw_tweets.json

* raw_tweets.json - over five thousand tweets right from Twitter's streaming API

* ten_tweets.json - ten clean and easy-to-parse tweets

* tweets.json - over five thousand tweets that are easy-to-parse
  (but there are still over five thousand of them)
